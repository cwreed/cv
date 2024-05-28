#import "template.typ": *
#import "metadata.typ": *
#import "modules/awards.typ": *
#import "modules/education.typ": *
#import "modules/professional.typ": *
#import "modules/publications.typ": *
#import "modules/research.typ": *
#import "modules/skills.typ": *

#show: layout
#set page(footer: cvFooter(pageNumbers: true))

#cvHeader(hasPhoto: false, align: left, quote: [])

#v(-12pt)
#cvSection("Education")
#nyu-resume
#yale-resume
#sfs-bhutan

#cvSection("Professional Experience")
#aquabyte-resume
#indigo-resume

#cvSection("Research Experience")
#mcdermid-lab-resume
#bradford-lab-resume

#cvSection("Publications")
#ref

#pagebreak()
#cvSection("Grants & Honors")
#v(6pt)
#reverse-order-honors

#cvSection("Skills")
#programming-skill
#ml-tools-skill
#devops-skill
#statistics-skill
#other-skill