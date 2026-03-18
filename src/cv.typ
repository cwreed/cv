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

#cvHeader(
  hasPhoto: false,
  align: left,
  quote: [Machine learning engineer who moves fluidly between research and production, building systems that address complex problems from experimentation to deployment at scale. Published researcher in environmental science bringing statistical rigor and cross-domain perspective to applied machine learning and software engineering.],
)

#cvSection("Education")
#nyu-resume
#yale-cv
#sfs-bhutan

#cvSection("Research Experience")
#mcdermid-lab-resume
#bradford-lab-resume

#cvSection("Publications")
#ref

#cvSection("Professional Experience")
#aquabyte-resume
#indigo-resume

#pagebreak()
#cvSection("Grants & Honors")
#v(6pt)
#reverse-order-honors

#cvSection("Skills")
#programming-skill
#ml-tools-skill
#databases-skill
#devops-skill
#statistics-skill
#other-skill
