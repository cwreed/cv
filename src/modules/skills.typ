#import "../template.typ": cvSkill

#let programming-skill = cvSkill(type: [Programming], info: [Python, SQL, Bash])

#let ml-tools-skill = cvSkill(
  type: [ML Tools],
  info: [PyTorch, scikit-learn, NumPy, pandas, ONNX, TensorRT, FiftyOne, Hydra, MLFlow, Weights & Biases],
)

#let databases-skill = cvSkill(type: [Databases], info: [PostgreSQL, Snowflake])

#let devops-skill = cvSkill(
  type: [DevOps],
  info: [Git, Docker, Terraform, dbt, Airflow, AWS],
)

#let statistics-skill = cvSkill(
  type: [Statistics],
  info: [Machine learning, deep learning, computer vision, time series,
    probabilistic models, Bayesian inference, hypothesis testing, A/B testing,
    generative models],
)

#let geospatial-skill = cvSkill(
  type: [Geospatial],
  info: [Google Earth Engine, GeoPandas, rasterio, xarray, GDAL],
)

#let other-skill = cvSkill(
  type: [Other],
  info: [Research, writing, public speaking],
)
