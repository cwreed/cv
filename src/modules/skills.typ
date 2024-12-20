#import "../template.typ": cvSkill

#let programming-skill = cvSkill(type: [Programming], info: [Python, R, SQL, Bash])

#let ml-tools-skill = cvSkill(
  type: [ML Tools],
  info: [PyTorch( Lightning), scikit-learn, experiment tracking (Hydra, Guild AI, W&B), TensorRT],
)

#let databases-skill = cvSkill(type: [Databases], info: [PostgreSQL])

#let devops-skill = cvSkill(type: [DevOps], info: [Git, Docker, Terraform, dbt, Airflow, AWS])

#let statistics-skill = cvSkill(
  type: [Statistics],
  info: [Machine learning, deep learning, computer vision, time series, geospatial, probabilistic models, Bayesian inference, hypothesis testing, A/B testing, structural causal models, generative models],
)

#let other-skill = cvSkill(
  type: [Other],
  info: [Research, writing, public speaking, food systems, ecology, food security, climate change, music (bass)],
)