#import "../template.typ": cvSkill

#let programming-skill = cvSkill(type: [Programming], info: [Python, R, SQL, Bash])

#let ml-tools-skill = cvSkill(
  type: [ML Tools],
  info: [PyTorch( Lightning), scikit-learn, experiment tracking (e.g., Hydra, Guild AI), TensorRT],
)

#let devops-skill = cvSkill(type: [DevOps], info: [Git, Docker, Terraform, dbt, AWS])

#let statistics-skill = cvSkill(
  type: [Statistics],
  info: [Machine learning, deep learning, computer vision, time series, geospatial, probabilistic models, Bayesian inference, hypothesis testing, structural causal models, A/B testing, generative models],
)

#let other-skill = cvSkill(
  type: [Other],
  info: [Scientific research, food systems, ecology, food security, climate change, music (bass)],
)