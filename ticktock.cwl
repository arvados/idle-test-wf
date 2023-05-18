cwlVersion: v1.2
class: Workflow
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
      ticks: step2/outTicks
    run: ticker.cwl
    out: [outTicks]

outputs: []
