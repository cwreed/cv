#import "../template.typ": cvEntry

#let aquabyte-resume = cvEntry(
  title: [Machine Learning Engineer],
  institution: [Aquabyte],
  date: [June 2022 -- present],
  location: [New York, NY],
  description: list(
    [Developed, optimized, and deployed custom small-object detector model to detect
      sea lice on salmon with human-level accuracy, yielding a 75% reduction in the cost of running the product while enabling more effective treatment and regulation],
    [Developed, optimized, and deployed model to detect body wounds on salmon],
    [Built system to integrate model servers into production pipeline, scaling inferences from tens to hundreds of thousands per day],
    [Built internal service to automatically curate important training/evaluation samples from production pipeline for human review],
    [Built ML dataset registry and Python library with common computer vision preprocessing and annotation methods to support model reproducibility and fast dataset curation],
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

