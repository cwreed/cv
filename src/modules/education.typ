#import "../template.typ": cvEntry, colors


#let nyu-cv = cvEntry(
  title: [Master of Science, Data Science],
  institution: [New York University],
  date: [2020 -- 2022],
  location: [New York, NY],
  description: list([_GPA_: 3.95/4.00]),
)

#let nyu-resume = cvEntry(
  title: [Master of Science, Data Science],
  institution: [New York University],
  date: [2020 -- 2022],
  location: [New York, NY],
  description: [],
)

#let yale-cv = cvEntry(
  title: [Bachelor of Science, Environmental Studies _with distinction_],
  institution: [Yale University],
  date: [2015 -- 2019],
  location: [New Haven, CT],
  description: list(
    [_GPA_: 3.86/4.00, _cum laude_],
    [_Thesis title_: Engaging open-source precision viticulture to manage spatial
      heterogeneity and improve cover-cropping practice on an organic vineyard (#link("https://evst.yale.edu/node/36310")[Abstract])],
  ),
)

#let yale-resume = cvEntry(
  title: [Bachelor of Science, Environmental Studies _with distinction_],
  institution: [Yale University],
  date: [2015 -- 2019],
  location: [New Haven, CT],
  description: list(
    [_Thesis title_: Engaging open-source precision viticulture to manage spatial
      heterogeneity and improve cover-cropping practice on an organic vineyard (#link("https://evst.yale.edu/node/36310")[Abstract])],
  ),
)

#let sfs-bhutan = cvEntry(
  title: [Study Abroad],
  institution: [School for Field Studies \// #linebreak()Ugyen Wangchuck Institute for Conservation and Environmental Research],
  date: [June -- July 2017],
  location: [Bumthang District, Bhutan],
  description: list(
    [Completed coursework on Himalayan forest ecology, rural livelihoods, and Bhutanese culture],
    [Conducted ethnographic field research on agricultural knowledge transfer in the village of Ura],
  ),
)