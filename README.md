# slack-logs
A viewer web application for the logs of a Slack workspace.

Example site, using this app to show the history of the official
`mod-harbour` Slack workspace: https://slack.mod-harbour.org

Powered by [mod-harbour](https://github.com/FiveTechSoft/mod_harbour) and
[Mercury MVC](https://github.com/carles9000/mercury).

## Setting up

This app takes its data for the history of a Slack workspace from one or more
[Standard Exports](https://slack.com/intl/en/help/articles/201658943-Export-your-workspace-data)
of the workspace. (Corporate Exports will work too, but we're not planning to
support direct messages or private channels anytime soon.) Each export must be
unzipped into a `logs/<export-name>` directory, where `<export-name>` can be any
arbitrary name.

Additionally, when setting up this app, you must create a `config.json` file
with an `exports` key that contains an array listing the export names in
chronological order:

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

You may find an example of the contents of the `logs` directory at
[cristobalnavarro/Slack_ModHarbour](https://github.com/cristobalnavarro/Slack_ModHarbour),
which contains the exports for the official `mod-harbour` Slack workspace.
