#import "metadata.typ": choiceColor

#let hBar() = [
  #h(5pt) | #h(5pt)
]

#let autoImport(file) = {
  include { "modules/" + file + ".typ" }
}

#let fontList = ("Lato")
#let headerFont = ("Lato")

#let colors = (
  sky: rgb("#7ca1bf"),
  sage: rgb("#688567"),
  clay: rgb("#ad6a55"),
  flax: rgb("#dbbc74"),
)

#let regularColors = (
  subtlegray: rgb("#ededee"),
  lightgray: rgb("#343a40"),
  darkgray: rgb("#212529"),
)

#let beforeSectionSkip = 1pt
#let beforeEntrySkip = 1pt
#let beforeEntryDescriptionSkip = 1pt

#let headerFirstNameStyle(str) = {
  text(
    font: headerFont,
    size: 32pt,
    weight: "light",
    fill: regularColors.darkgray,
    str,
  )
}

#let headerLastNameStyle(str) = { text(font: headerFont, size: 32pt, weight: "bold", str) }

#let headerInfoStyle(str, accentColor) = { text(size: 10pt, fill: accentColor, str) }

#let headerQuoteStyle(str, accentColor) = { text(size: 10pt, weight: "medium", style: "italic", fill: accentColor, str) }

#let sectionTitleStyle(str, color: black) = { text(size: 16pt, font: fontList, weight: "bold", fill: color, str) }

#let entryA1Style(str) = { text(size: 10pt, weight: "bold", str) }

#let entryA2Style(str, accentColor) = {
  align(
    right,
    text(weight: "medium", fill: accentColor, style: "oblique", str),
  )
}

#let entryB1Style(str, accentColor) = { text(size: 8pt, fill: accentColor, weight: "medium", smallcaps(str)) }

#let entryB2Style(str) = {
  align(
    right,
    text(size: 8pt, weight: "medium", fill: gray, style: "oblique", str),
  )
}

#let entryDescriptionStyle(str) = {
  text(fill: regularColors.lightgray, {
    v(beforeEntryDescriptionSkip)
    str
  })
}

#let entryTagStyle(str) = { align(center, text(size: 8pt, weight: "regular", str)) }

#let entryTagListStyle(tags) = {
  for tag in tags {
    box(
      inset: (x: 0.25em),
      outset: (y: 0.25em),
      fill: regularColors.subtlegray,
      radius: 3pt,
      entryTagStyle(tag),
    )
    h(5pt)
  }
}

#let skillTypeStyle(str) = {
  align(left, text(size: 10pt, weight: "bold", str))
}

#let skillInfoStyle(str) = { text(str) }

#let honorDateStyle(str) = {
  align(right, text(str))
}

#let honorTitleStyle(str) = { text(weight: "bold", str) }

#let honorIssuerStyle(str) = { text(str) }

#let honorLocationStyle(str, accentColor) = {
  align(
    right,
    text(weight: "medium", fill: accentColor, style: "oblique", str),
  )
}

#let publicationStyle(str) = { text(str) }

#let footerStyle(str) = { text(size: 8pt, fill: rgb("#999999"), smallcaps(str)) }

#let letterHeaderNameStyle(str, accentColor) = { text(fill: accentColor, weight: "bold", str) }

#let letterHeaderAddressStyle(str) = { text(fill: gray, size: 0.9em, smallcaps(str)) }

#let letterDateStyle(str) = { text(size: 0.9em, style: "italic", str) }

#let letterSubjectStyle(str, accentColor) = { text(fill: accentColor, weight: "bold", underline(str)) }