---
name: monografia
description: Flujo completo para escribir la monografía de Ser y Cosmos, de la consigna al .docx final. Úsalo al empezar, al retomar el trabajo o cuando el estudiante pregunte "¿qué sigue?".
---

# Flujo de la monografía

Detecta la etapa actual leyendo `monografia/` y continúa desde ahí. Al terminar cada etapa, muestra el resultado y **espera aprobación** antes de pasar a la siguiente.

## 1. Consigna (`00-consigna.md`)
Pide y registra: tema (asignado/libre), extensión (palabras o páginas), formato de citas, fuentes mínimas, lecturas obligatorias, fecha de entrega, criterios de la rúbrica. Si hay PDFs en `curso/`, extrae de ahí lo que puedas y confirma lo que falte.

## 2. Tema, pregunta y tesis (`01-tema-y-pregunta.md`)
1. Pregunta al estudiante qué temas del curso le interesaron y qué opina de ellos (3–4 preguntas cortas, no un cuestionario).
2. Propón 3 preguntas de investigación posibles. Buenas preguntas para Ser y Cosmos son **discutibles** y **acotadas**: "¿Es compatible el universo determinista de Laplace con la libertad humana?" sí; "¿Qué es el ser?" no.
3. Con la pregunta elegida, ayuda a formular una **tesis** de una o dos oraciones que tome postura. Usa `/argumentacion-filosofica`.
4. Registra: pregunta, tesis, por qué importa, autores del curso que dialogan con el tema.

## 3. Fuentes (`fuentes/fichas/`, `bibliografia.md`)
Usa `/investigacion-fuentes`. Meta orientativa: lecturas del curso relevantes + 3–6 fuentes académicas externas (o lo que pida la consigna). Una ficha por fuente.

## 4. Esquema (`02-esquema.md`)
Estructura base (ajústala a la extensión):
- **Introducción** (~10 %): contexto, pregunta, tesis, mapa del texto.
- **Desarrollo** (~75 %): 2–4 secciones; cada una = una idea que sostiene la tesis, con autor/fuente que la respalda. Incluye una sección de **objeción y respuesta**.
- **Conclusión** (~10 %): retoma la tesis con lo ganado, límites, pregunta abierta.
- **Referencias**.
Para cada sección anota: idea central, fichas que usa, palabras estimadas.

## 5. Borrador (`03-monografia.md`)
Escribe sección por sección, no todo de una. Sigue `/escritura-academica` y `/citas-apa`. Después de cada sección, muéstrala y pregunta si refleja lo que el estudiante piensa; incorpora su voz y sus ejemplos.

## 6. Revisión (`04-revision.md`)
Corre `/revision`. Corrige lo que salga, con aprobación.

## 7. Entrega
`bash scripts/exportar.sh` → `entrega/monografia.docx`. Verifica: portada, conteo dentro del rango, referencias con sangría francesa, todas las `[VERIFICAR]` resueltas.
