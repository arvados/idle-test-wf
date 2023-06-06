cwlVersion: v1.2
class: CommandLineTool

$namespaces:
  arv: "http://arvados.org/cwl#"

requirements:
  arv:APIRequirement: {}

inputs:
  ticks: int
  script:
    type: File
    default:
      class: File
      location: idle.py

arguments: [python3, $(inputs.script), $(inputs.ticks)]

outputs:
  outTicks:
    type: int
    outputBinding:
      outputEval: $(inputs.ticks)
