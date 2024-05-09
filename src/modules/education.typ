#import "../template.typ": cvSection, cvEntry, colors
#show link: set text(fill: colors.sky)

#cvSection("Education")

#cvEntry(
  title: [Master of Science, Data Science],
  institution: [New York University],
  date: [2020 -- 2022],
  location: [New York, NY],
  description: [],
)

#cvEntry(
  title: [Bachelor of Science, Environmental Studies _with distinction_],
  institution: [Yale University],
  date: [2015 -- 2019],
  location: [New Haven, CT],
  description: list(
    [_Thesis title_: Engaging open-source precision viticulture to manage spatial
      heterogeneity and improve cover-cropping practice on an organic vineyard (#link("https://evst.yale.edu/node/36310")[Abstract])],
  ),
)