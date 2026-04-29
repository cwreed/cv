#import "../template.typ": cvEntry

#let mcdermid-lab-resume = cvEntry(
  title: [Graduate Research Assistant, McDermid Lab],
  institution: [New York University, Department of Environmental Studies],
  date: [July 2020 -- September 2022],
  location: [New York, NY],
  description: list(
    [Developed end-to-end geospatial deep learning pipeline to infer flood extent and
      smallholder cropland distribution from multi-modal Sentinel-1 SAR and Sentinel-2
      multispectral time series across sub-Saharan Africa],
    [Published geospatial causal analysis quantifying the impact of flood events on food
      security outcomes (IPC rating) across sub-Saharan Africa 2009--2020
      using panel regression and Granger causality testing @reed2022],
  ),
)

#let bradford-lab-resume = cvEntry(
  title: [Research Assistant, The Bradford Lab],
  institution: [Yale School of the Environment],
  date: [January 2016 -- August 2020],
  location: [New Haven, CT],
  description: list(
    [Conducted meta-analysis (data collection, statistical analysis) of long-term
      experiments to quantify the mediating effect of soil organic carbon on the
      relationship between conservation agriculture practices and crop yield stability],
  ),
)
