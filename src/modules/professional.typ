#import "../template.typ": cvEntry

#let aquabyte-resume = cvEntry(
  title: [Senior Machine Learning Engineer \ Machine Learning Engineer],
  institution: [Aquabyte],
  date: [December 2024 -- present \ June 2022 -- December 2024],
  location: [New York, NY],
  description: list(
    [Developed and deployed sea lice detection system processing \~100K images across
      400+ fish farm pens daily, automating a labor-intensive monitoring task mandated by
      Norwegian regulations; evolved PyTorch ensemble through 3 model generations,
      achieving \>0.7 F1 on challenging underwater small object detection task],
    [Designed and automated statistical aggregation pipeline combining model detections
      with minimal human QA to generate daily unbiased estimates of mean lice/fish,
      reducing lice product COGS by \~90%; validated accuracy through field trials],
    [Developed and deployed 16-day lice forecasting model with graph features and
      intervention simulation to 400+ pens with an interactive API, enabling customers to
      proactively manage lice outbreaks and optimize treatment timing],
    [Architected distributed ML inference backend for fleet of vision models, scaling
      throughput from \<100K to \>2M images/day],
    [*_Key tech_*: PyTorch, YOLOv9, DinoV2, Neural Fields, Transformers, LightGBM, MLFlow, ONNX, TensorRT, Docker, Terraform],
  ),
)

#let indigo-resume = cvEntry(
  title: [Soil Data Research Intern, Carbon Experimentation],
  institution: [Indigo],
  date: [June -- August 2021],
  location: [Boston, MA],
  description: list(
    [Developed generative Bayesian models to synthesize soil datasets from
      heterogeneous published and proprietary sources, enabling simulation of
      soil carbon responses to management practices across diverse geographies],
    [Performed quantitative analysis of carbon sequestration potential and risk-reward
      tradeoffs across agricultural land use scenarios to identify high-value carbon
      market opportunities],
    [*_Key tech_*: NumPy, pandas, scikit-learn, Plotly],
  ),
)
