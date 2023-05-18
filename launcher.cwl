cwlVersion: v1.2
class: CommandLineTool
inputs:
  script:
    type: File
    default:
      class: File
      location: launcher.py

arguments: [python3, $(inputs.script)]

outputs: []
