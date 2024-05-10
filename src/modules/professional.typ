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
    [Built internal services to orchestrate serving images to models, yielding hundreds of thousands of inferences per day],
    [Built internal service to automatically curate important data samples for model
      training and testing],
    [Built ML dataset registry and software libraries to support model reproducibility and reduce friction to model iteration],
    [Conduct experiments to estimate effects of research proposals on company
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

