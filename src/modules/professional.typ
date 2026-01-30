#import "../template.typ": cvEntry

#let aquabyte-resume = cvEntry(
  title: [Senior Machine Learning Engineer \ Machine Learning Engineer],
  institution: [Aquabyte],
  date: [December 2024 -- present \ June 2022 -- December 2024],
  location: [New York, NY],
  description: list(
    [Developed and deployed sea lice detection system serving 350+ fish farm pens,
      processing \~90,000 images daily; built PyTorch ensemble (YOLOv9, DinoV2, custom
      neural field transformer) achieving \>0.7 F1 on challenging underwater small
      object detection problem (targets often \<2% width of image with blur and
      varying water conditions); iterated through 3 model generations using thousands
      of tracked experiments (Guild AI, Hydra)],
    [Reduced lice product COGS by \~90% by automating statistical aggregation
      pipeline (Python) that combines model predictions with minimal human QA;
      validated through field trials, with customers reporting highest accuracy among
      competitors],
    [Built 16-day lice forecasting model (LightGBM) with graph features and
      intervention simulation deployed to 350+ pens],
    [Architected microservices infrastructure (FastAPI, PostgreSQL, Docker,
      Terraform) that serves as ML backbone for welfare product; scaled model
      inference throughput from tens of thousands to 2+ million images per day through
      continuous minibatch processing and queue management across multiple model
      servers],
    [Created internal Python package/CLI for reproducible CVML dataset creation,
      enabling developers to export and process training data from production pipeline
      with configurable options documented in YAML metadata files],
  ),
)

#let indigo-resume = cvEntry(
  title: [Soil Data Research Intern, Carbon Experimentation],
  institution: [Indigo],
  date: [June -- August 2021],
  location: [Boston, MA],
  description: list(
    [Crafted quantitative framework, analysis, and data visualizations used by the
      CEO to evaluate risk-reward tradeoffs of key agricultural carbon market
      opportunities],
    [Developed generative Bayesian models to create synthetic soil data combining
      information from published and proprietary data],
    [Created pipeline to automatically clean, map, and interpret soil sample data for
      customers],
  ),
)

