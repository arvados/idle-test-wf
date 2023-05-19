cwlVersion: v1.2
class: Workflow

$namespaces:
  arv: "http://arvados.org/cwl#"

hints:
  arv:WorkflowRunnerResources:
    ramMin: 512

inputs:
  ticksPerStep: int

steps:
  step1:
    in:
      ticks: ticksPerStep
    run: ticker.cwl
    out: [outTicks]
  step2:
    in:
      ticks: step1/outTicks
    run: ticker.cwl
    out: [outTicks]
  step3:
    in:
      ticks: step1/outTicks
    run: ticker.cwl
    out: [outTicks]
  step4:
    in:
      ticks: step3/outTicks
    run: ticker.cwl
    out: [outTicks]

outputs: []
