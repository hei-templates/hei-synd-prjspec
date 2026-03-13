#import "/metadata.typ": *
#import "/tail/bibliography.typ": *
#import "/tail/glossary.typ": *
#show:make-glossary
#register-glossary(entry-list)

//-------------------------------------
// Template config
//
#show: report.with(
  option: option,
  doc: doc,
  date: date,
  tableof: tableof,
)

//-------------------------------------
// Content
//
#include "/main/01-abstract.typ"
#include "/main/02-goals.typ"
#include "/main/03-tasks.typ"
#include "/main/04-milestones.typ"
#include "/main/05-planning.typ"

//-------------------------------------
// Glossary
//
#make_glossary(gloss:gloss, title:i18n("gloss-title", lang: option.lang))

//-------------------------------------
// Bibliography
//
#make_bibliography(bib:bib, title:i18n("bib-title", lang: option.lang))


//-------------------------------------
// Appendix
//
#if appendix == true {[
  #counter(heading).update(0)
  #set heading(numbering:"A")
  #include "/tail/a-appendix.typ"
]}
