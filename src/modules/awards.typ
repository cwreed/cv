#import "../template.typ": cvHonor

#let gaylord-donnelley = cvHonor(
  date: "2019",
  title: "Gaylord Donnelley Prize in Environmental Studies",
  issuer: "Yale University, Department of Environmental Studies",
  url: "https://evst.yale.edu/gaylord-donnelley-prize",
)

#let yale-gff-2 = cvHonor(
  date: "2019",
  title: "Yale Global Food Fellowship",
  issuer: "Yale Sustainable Food Program",
  url: "https://www.sustainablefood.yale.edu/global-food-fellowship",
)

#let yale-sef = cvHonor(
  date: "2018",
  title: "Yale Summer Environmental Fellowship",
  issuer: "Yale University, Department of Environmental Studies",
  url: "https://evst.yale.edu/summer-environmental-fellowships-2018",
)

#let yale-gff-1 = cvHonor(
  date: "2017",
  title: "Yale Global Food Fellowship",
  issuer: "Yale Sustainable Food Program",
  url: "https://www.sustainablefood.yale.edu/global-food-fellowship",
)

#let robert-berlin = cvHonor(
  date: "2017",
  title: "Robert Berlin Fellowship",
  issuer: "Yale University, Berkeley College",
)

#let tristan-perlroth = cvHonor(
  date: "2017",
  title: "Tristan Perlroth Prize for Summer Foreign Travel",
  issuer: "Yale University",
)

#let freshman-science = cvHonor(
  date: "2016",
  title: "Yale College First-Year Summer Research Fellowship in the Sciences & Engineering",
  issuer: "Yale University",
)

#let reverse-order-honors = list(
  [#gaylord-donnelley],
  [#yale-gff-2],
  [#yale-sef],
  [#yale-gff-1],
  [#robert-berlin],
  [#tristan-perlroth],
  [#freshman-science],
  marker: [],
)