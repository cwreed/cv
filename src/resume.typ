#import "template.typ": *
#import "modules/education.typ": *
#import "modules/professional.typ": *
#import "modules/publications.typ": *
#import "modules/research.typ": *
#import "modules/skills.typ": *

#show: layout
#set page(footer: cvFooter(pageNumbers: false))

#cvHeader(
  hasPhoto: false,
  align: left,
  quote: "Machine learning engineer who moves fluidly between research and production, building systems that address complex prediction problems at scale. Published researcher in environmental science bringing statistical rigor and cross-domain perspective to applied machine learning and software engineering.",
)

#cvSection("Professional Experience")
#aquabyte-resume
#indigo-resume

#cvSection("Research Experience")
#mcdermid-lab-resume
#bradford-lab-resume

#cvSection("Publications")
#ref

#cvSection("Education")
#nyu-resume
#yale-resume

#cvSection("Skills")
#programming-skill
#ml-tools-skill
#databases-skill
#devops-skill
#statistics-skill
#other-skill
