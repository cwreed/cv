#import "../template.typ": cvSkill

#let programming-skill = cvSkill(type: [Programming], info: [Python, SQL, Bash])

#let ml-tools-skill = cvSkill(
  type: [ML Tools],
  info: [PyTorch, scikit-learn, NumPy, pandas, ONNX, TensorRT, FiftyOne, experiment tracking (Hydra, MLFlow, Weights & Biases, Guild AI)],
)

#let databases-skill = cvSkill(type: [Databases], info: [PostgreSQL, Snowflake])

#let devops-skill = cvSkill(type: [DevOps], info: [Git, Docker, Terraform, dbt, Airflow, AWS])

#let statistics-skill = cvSkill(
  type: [Statistics],
  info: [Machine learning, deep learning, computer vision, time series, geospatial, probabilistic models, Bayesian inference, hypothesis testing, A/B testing, generative models],
)

#let other-skill = cvSkill(type: [Other], info: [Research, writing, public speaking])