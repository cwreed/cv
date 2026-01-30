/* Packages */
#import "metadata.typ": *
#import "utils.typ": *
#import "@preview/fontawesome:0.2.0": *

#let accentColor = {
  if type(choiceColor) == color {
    colorName
  } else {
    colors.at(choiceColor)
  }
}

#let cvHeader(align: left, hasPhoto: true, quote: str) = {
  let makeHeaderInfo() = {
    let personalInfoIcons = (
      phone: fa-phone(),
      email: fa-envelope(),
      linkedin: fa-linkedin(),
      homepage: fa-pager(),
      github: fa-square-github(),
      gitlab: fa-gitlab(),
      orcid: fa-orcid(),
      researchgate: fa-researchgate(),
      location: fa-location-dot(),
      googleScholar: fa-graduation-cap(),
      extraInfo: "",
    )
    let n = 1
    for (k, v) in personalInfo {
      // A dirty trick to add linebreaks with "linebreak" as key in personalInfo
      if k == "linebreak" {
        n = 0
        linebreak()
        continue
      }
      if k.contains("custom") {
        // example value (icon: fa-graduation-cap(), text: "PhD", link: "https://www.example.com")
        let icon = v.at("icon", default: "")
        let text = v.at("text", default: "")
        let link_value = v.at("link", default: "")
        box({
          icon
          h(5pt)
          link(link_value)[#text]
        })
      } else if v != "" {
        box({
          // Adds icons
          personalInfoIcons.at(k) + h(5pt)
          // Adds hyperlinks
          if k == "email" {
            link("mailto:" + v)[#v]
          } else if k == "linkedin" {
            link("https://www.linkedin.com/in/" + v)[#v]
          } else if k == "github" {
            link("https://github.com/" + v)[#v]
          } else if k == "gitlab" {
            link("https://gitlab.com/" + v)[#v]
          } else if k == "homepage" {
            link("https://" + v)[#v]
          } else if k == "orcid" {
            link("https://orcid.org/" + v)[#v]
          } else if k == "researchgate" {
            link("https://www.researchgate.net/profile/" + v)[#v]
          } else {
            v
          }
        })
      }
      // Adds hBar
      if n != personalInfo.len() {
        hBar()
      }
      n = n + 1
    }
  }

  let makeHeaderNameSection() = table(
    columns: 1fr,
    inset: 0pt,
    stroke: none,
    row-gutter: 6mm,
    [#headerFirstNameStyle(firstName) #h(5pt) #headerLastNameStyle(lastName)],
    [#headerInfoStyle(makeHeaderInfo(), accentColor)],
    [#headerQuoteStyle(quote, accentColor)],
  )

  let makeHeader(leftComp, rightComp, columns, align) = table(
    columns: columns,
    inset: 0pt,
    stroke: none,
    column-gutter: 15pt,
    align: align + horizon,
    { leftComp },
    { rightComp },
  )

  show link: set text(fill: accentColor)
  makeHeader(makeHeaderNameSection(), v(2.75cm), (auto, 0%), align)
}

#let cvSection(title, highlighted: true, letters: 3) = {
  let highlightText = title.slice(0, letters)
  let normalText = title.slice(letters)

  v(beforeSectionSkip)
  sectionTitleStyle(title, color: black)
  h(2pt)
  box(width: 1fr, line(stroke: 0.9pt, length: 100%))
}

#let cvEntry(
  title: "Title",
  institution: "Society",
  date: "Date",
  location: "Location",
  description: "",
  logo: "",
  tags: (),
) = {
  let ifSocietyFirst(condition, field1, field2) = {
    return if condition { field1 } else { field2 }
  }
  let ifLogo(path, ifTrue, ifFalse) = {
    return if varDisplayLogo {
      if path == "" { ifFalse } else { ifTrue }
    } else { ifFalse }
  }
  let setLogoLength(path) = {
    return if path == "" { 0% } else { 4% }
  }
  let setLogoContent(path) = {
    return if logo == "" [] else { image(path, width: 100%) }
  }
  v(beforeEntrySkip)
  table(
    columns: (ifLogo(logo, 4%, 0%), 1fr),
    inset: 0pt,
    stroke: none,
    align: horizon,
    column-gutter: ifLogo(logo, 4pt, 0pt),
    setLogoContent(logo),
    table(
      columns: (1fr, auto),
      inset: 0pt,
      stroke: none,
      row-gutter: 6pt,
      align: auto,
      { entryA1Style(ifSocietyFirst(varEntrySocietyFirst, institution, title)) },
      {
        entryA2Style(ifSocietyFirst(varEntrySocietyFirst, location, date), accentColor)
      },
      {
        entryB1Style(ifSocietyFirst(varEntrySocietyFirst, title, institution), accentColor)
      },
      { entryB2Style(ifSocietyFirst(varEntrySocietyFirst, date, location)) },
    ),
  )
  entryDescriptionStyle(description)
  entryTagListStyle(tags)
}

#let cvSkill(type: "Type", info: "Info") = {
  table(
    columns: (13%, 1fr),
    inset: 0pt,
    column-gutter: 10pt,
    stroke: none,
    align: (right, left),
    skillTypeStyle(type),
    skillInfoStyle(info),
  )
  v(-6pt)
}

#let cvHonor(date: "1990", title: "Title", issuer: "", url: "", location: "") = {
  table(
    columns: (auto, 1fr),
    inset: 0pt,
    column-gutter: 10pt,
    row-gutter: 5pt,
    align: horizon,
    stroke: none,
    honorDateStyle(date),
    if issuer == "" {
      honorTitleStyle(title)
    } else if url != "" {
      [
        #honorTitleStyle(link(url)[#title]), #honorIssuerStyle(issuer)
      ]
    } else {
      [
        #honorTitleStyle(title), #honorIssuerStyle(issuer)
      ]
    },
    honorLocationStyle(location, accentColor),
  )
  v(-6pt)
}

#let cvPublication(bibPath: "", keyList: list(), refStyle: "apa", refFull: true) = {
  show bibliography: it => publicationStyle(it, firstName, lastName)
  bibliography(bibPath, title: none, style: refStyle, full: refFull)
}

#let cvFooter(pageNumbers: bool) = {
  let today = datetime.today(offset: auto)
  let left = [#firstName #lastName]
  if pageNumbers {
    left = left + [, page #counter(page).display("1/1", both: true)]
    table(columns: (1fr, auto), inset: 0pt, stroke: none, footerStyle(left))
  }
}

#let letterHeader(
  myAddress: "Your Address Here",
  recipientName: "Company Name Here",
  recipientAddress: "Company Address Here",
  date: "Today's Date",
  subject: "Subject: Hey!",
) = {
  letterHeaderNameStyle(firstName + " " + lastName, accentColor)
  v(1pt)
  letterHeaderAddressStyle(myAddress)
  v(1pt)
  align(right, letterHeaderNameStyle(recipientName))
  v(1pt)
  align(right, letterHeaderAddressStyle(recipientAddress))
  v(1pt)
  letterDateStyle(date)
  v(1pt)
  letterSubjectStyle(subject, accentColor)
  linebreak(); linebreak()
}

#let letterSignature(path) = {
  linebreak()
  place(right, dx: -5%, dy: 0%, image(path, width: 25%))
}

#let letterFooter() = {
  place(bottom, table(
    columns: (1fr, auto),
    inset: 0pt,
    stroke: none,
    footerStyle([#firstName #lastName]),
    footerStyle(languageSwitch(letterFooterInternational)),
  ))
}

#let layout(doc) = {
  set text(font: fontList, weight: "regular", size: 9pt)
  set align(left)
  set page(
    paper: "a4",
    margin: (left: 1.4cm, right: 1.4cm, top: .8cm, bottom: .8cm),
  )
  show link: set text(fill: colors.sky)
  doc
}