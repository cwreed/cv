#import "../template.typ": cvEntry

#let aquabyte-resume = cvEntry(
  title: [Senior Machine Learning Engineer \ Machine Learning Engineer],
  institution: [Aquabyte],
  date: [December 2024 -- present \ June 2022 -- December 2024],
  location: [New York, NY],
  description: list(
    [Developed custom PyTorch model ensemble (inc. object detection, segmentation, neural fields) to detect
      sea lice on salmon from underwater imagery with human-level accuracy; optimized for inference speed with TensorRT; deployed as Dockerized application server in AWS],
    [Built system to integrate model servers into production data pipeline and optimize throughput, scaling inferences from tens to hundreds of thousands of images per day],
    [Built ML dataset registry and Python library with common image preprocessing and annotation methods to support computer vision model reproducibility and fast dataset curation],
    [Conduct live and simulation experiments to estimate effects of new models and research proposals on company
      objectives],
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

