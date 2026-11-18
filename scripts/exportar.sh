#!/usr/bin/env bash
# Exporta la monografía a Word (APA: Times New Roman 12, doble espacio, márgenes 2,54 cm).
# Uso:  bash scripts/exportar.sh            -> entrega/monografia.docx
#       bash scripts/exportar.sh --conteo   -> solo cuenta palabras del cuerpo
set -euo pipefail
cd "$(dirname "$0")/.."

CUERPO="monografia/03-monografia.md"
REFS="monografia/bibliografia.md"

contar() {
  # Cuenta palabras sin el bloque YAML ni comentarios HTML
  awk 'BEGIN{y=0;c=0} /^---$/ && y<2 {y++; next} /^```/{c=!c; next} y>=2 && !c' "$CUERPO" \
    | sed 's/<!--.*-->//g' | grep -v '^#' | wc -w | tr -d ' '
}

if [[ "${1:-}" == "--conteo" ]]; then
  echo "Palabras del cuerpo (sin títulos ni referencias): $(contar)"
  exit 0
fi

command -v pandoc >/dev/null || { echo "Falta pandoc: https://pandoc.org/installing.html"; exit 1; }
mkdir -p entrega

pandoc "$CUERPO" "$REFS" \
  --from markdown \
  --reference-doc plantillas/apa-reference.docx \
  -o entrega/monografia.docx

echo "Listo: entrega/monografia.docx  ($(contar) palabras en el cuerpo)"
echo "Revisa en Word: portada, sangría francesa en Referencias y numeración de páginas."
