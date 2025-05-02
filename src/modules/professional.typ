#import "../template.typ": cvEntry

#let aquabyte-resume = cvEntry(
  title: [Senior Machine Learning Engineer \ Machine Learning Engineer],
  institution: [Aquabyte],
  date: [December 2024 -- present \ June 2022 -- December 2024],
  location: [New York, NY],
  description: list(
    [Developed PyTorch model ensemble (combining YOLOv9, DinoV2, and a bespoke neural field with transformers) to detect
      sea lice on salmon from underwater imagery with expert-level accuracy; optimized with TensorRT],
    [Developed multivariate time series forecasting model with graph features using LightGBM to predict future lice levels and enable customers to simulate the impacts of future interventions],
    [Design Python libraries to package models; deploy models as web services in AWS using FastAPI, Docker, and Terraform],
    [Built network of microservices using FastAPI, PostgreSQL, Docker, and Terraform in AWS to integrate diverse model servers into production data pipeline and optimize throughput, scaling inferences from tens to hundreds of thousands of images per day],
    [Developed and automated ETL processes using Python, Pydantic, and Airflow, e.g., to aggregate model inferences into customer-facing data, evaluate model accuracy over time, and move data between databases],
    [Conduct A/B tests and statistical simulations to estimate effects of new models and research proposals on company objectives],
    [Serve on company's ESG committee; wrote report for investor on the company's impact, responsibilities, and plans to advance sustainable aquaculture in the wider industry, establishing internal ESG objectives],
  ),
)

#let indigo-resume = cvEntry(
  title: [Soil Data Research Intern, Carbon Experimentation],
  institution: [Indigo],
  date: [June -- August 2021],
  location: [Boston, MA],
  description: list(
    [Crafted quantitative framework, analysis, and data visualizations used by the CEO to evaluate risk-reward tradeoffs of key
      agricultural carbon market opportunities],
    [Developed generative Bayesian models to create synthetic soil data combining information from published and proprietary data],
    [Created pipeline to automatically clean, map, and interpret soil sample data for
      customers],
  ),
)

