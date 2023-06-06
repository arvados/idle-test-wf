cwlVersion: v1.2
class: CommandLineTool

$namespaces:
  arv: "http://arvados.org/cwl#"

requirements:
  arv:APIRequirement: {}

hints:
  arv:WorkflowRunnerResources:
    ramMin: 512

inputs:
  tickers: int
  arvwf: string
  tps: int
  script:
    type: File
    default:
      class: File
      location: launcher.py

arguments: [python3, $(inputs.script), $(inputs.tickers), $(inputs.arvwf), $(inputs.tps)]

outputs: []
