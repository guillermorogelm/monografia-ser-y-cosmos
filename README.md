# Monografía — Ser y Cosmos (USFQ)

Kit para escribir la monografía de **Ser y Cosmos** con Claude Code: skills de escritura académica, investigación de fuentes, APA 7, argumentación filosófica y revisión contra la rúbrica. Exporta directo a Word con formato APA.

## 1. Instalar (una sola vez)
1. Instala **Claude Code**: https://docs.claude.com/en/docs/claude-code/overview
2. Instala **pandoc** (para exportar a Word): https://pandoc.org/installing.html
   - Mac: `brew install pandoc` · Windows: `winget install pandoc`
3. Clona el repo:
   ```bash
   git clone https://github.com/guillermorogelm/monografia-ser-y-cosmos.git
   cd monografia-ser-y-cosmos
   ```

## 2. Prepara el material
- Pon en `curso/` el **sílabo**, la **consigna**, la **rúbrica** y las **lecturas** del curso (PDF).
- Pega la consigna en `monografia/00-consigna.md`.

## 3. Trabaja
```bash
claude
```
Y escribe:
```
/monografia
```
Claude va por etapas y pide tu aprobación en cada una:

| # | Etapa | Dónde queda |
|---|---|---|
| 1 | Consigna y rúbrica | `monografia/00-consigna.md` |
| 2 | Tema, pregunta y tesis | `monografia/01-tema-y-pregunta.md` |
| 3 | Fuentes y fichas | `fuentes/fichas/`, `monografia/bibliografia.md` |
| 4 | Esquema | `monografia/02-esquema.md` |
| 5 | Borrador | `monografia/03-monografia.md` |
| 6 | Revisión contra la rúbrica | `monografia/04-revision.md` |
| 7 | Word final | `entrega/monografia.docx` |

## Skills incluidas
| Comando | Para qué |
|---|---|
| `/monografia` | Flujo completo, o "¿qué sigue?" |
| `/argumentacion-filosofica` | Pregunta, tesis, reconstruir argumentos, objeción y respuesta |
| `/investigacion-fuentes` | Buscar, verificar y fichar fuentes |
| `/citas-apa` | APA 7 en español, incluidos clásicos (Platón, Aristóteles) |
| `/escritura-academica` | Estilo, párrafos, conectores y lista anti-"tics de IA" |
| `/revision` | Informe tipo profesor con puntaje estimado por criterio |

## Exportar
```bash
bash scripts/exportar.sh            # -> entrega/monografia.docx (Times 12, doble espacio, márgenes 2,54 cm)
bash scripts/exportar.sh --conteo   # conteo de palabras del cuerpo
```

## Tips
- Mientras más le cuentes a Claude lo que piensas del tema, más suena a ti y mejor la nota en "análisis propio".
- Claude nunca debe inventar fuentes: todo lo marcado `[VERIFICAR]` revísalo antes de entregar.
- Revisa la política de uso de IA de tu profesor en el sílabo.
