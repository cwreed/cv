#import "../template.typ": cvSection, cvEntry

#cvSection("Professional Experience")

#cvEntry(
  title: [Machine Learning Engineer],
  institution: [Aquabyte],
  date: [June 2022 -- present],
  location: [New York, NY],
  description: list(
    [Developed, optimized, and deployed custom small-object detector model to detect
      sea lice on salmon with quantified uncertainty, yielding a 75% reduction in
      annotation COGS while enabling more effective treatment and regulation],
    [Developed, optimized, and deployed model to detect body wounds on salmon],
    [Built system to integrate model servers into production pipeline, scaling inferences from tens to hundreds of thousands per day],
    [Built internal service to automatically curate important training/evaluation samples from production pipeline for human QA],
    [Built ML dataset registry and Python library with common computer vision preprocessing and annotation methods to support model reproducibility and reduce friction to model iteration],
    [Conduct experiments to estimate effects of new models and other research proposals on company
      objectives],
    [Wrote report for investors on the company's plans to advance sustainable aquaculture, establishing internal ESG objectives],
  ),
)

#cvEntry(
  title: [Soil Data Research Intern, Carbon Experimentation],
  institution: [Indigo],
  date: [June -- August 2021],
  location: [Boston, MA],
  description: list(
    [Crafted quantitative framework and visualizations used by the CEO to evaluate risk-reward tradeoff of key
      agricultural carbon market opportunities],
    [Developed generative Bayesian models to create synthetic soil data from published scientific (prior) and proprietary data],
    [Created pipeline to automatically clean, map, and interpret soil sample data for
      customers],
  ),
)

