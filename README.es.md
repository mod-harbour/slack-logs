# slack-logs
Una aplicación web para visualizar los logs de un espacio de trabajo de Slack.

Sitio de ejemplo, que usa esta aplicación para mostrar el historial del espacio
de trabajo de Slack oficial de `mod-harbour`: https://slack.mod-harbour.org

Desarrollado con las tecnologías
[mod-harbour](https://github.com/FiveTechSoft/mod_harbour) y
[Mercury MVC](https://github.com/carles9000/mercury).

## Configuración

Esta aplicación toma los datos del historial de un espacio de trabajo de Slack
a partir de una o más
[exportaciones de datos estándar](https://slack.com/intl/es/help/articles/201658943-Cómo-exportar-los-datos-de-tu-espacio-de-trabajo)
del espacio de trabajo. (Las exportaciones corporativas también funcionan, pero
no pensamos soportar mensajes directos o canales cerrados en el futuro próximo.)
Cada exportación se debe descomprimir en un directorio
`logs/<nombre-de-exportación>`, donde `<nombre-de-exportación>` puede ser
cualquier nombre arbitrario.

Adicionalmente, al configurar la aplicación, se debe crear un fichero
`config.json` con una clave `exports` que contenga un array que enumere los
nombres de las exportaciones en orden cronológico:

```json
{
    "exports": [
        "Harbour_Project_Slack_May_20_2019_28_Sep_2019",
        "Harbour Project Slack_Sep_27_2019_Feb_13_2020",
        "Harbour_Project_Slack_Feb_13_2020_May_4_2020",
        "Harbour Project Slack_May_03_2020_Jun_14_2020",
        "Harbour_Project_Slack_Jun_13_2020_Aug_05_2020"
    ]
}
```

Hay un ejemplo del contenido del directorio `logs` en
[cristobalnavarro/Slack_ModHarbour](https://github.com/cristobalnavarro/Slack_ModHarbour),
que contiene las exportaciones del espacio de trabajo de Slack oficial de
`mod-harbour`.
