#import "@preview/hei-synd-thesis:0.3.1": *
#import "@preview/hei-synd-prjspec:0.1.0": *

//-------------------------------------
// Document options
//
#let option = (
  type : sys.inputs.at("type", default:"draft"),    // [draft|final]
  lang : sys.inputs.at("lang", default:"en"),       // [en|fr|de]
)
//-------------------------------------
// Optional generate titlepage image
//
#import "@preview/fractusist:0.3.2":*  // only for the generated images
#let titlepage_logo= dragon-curve(
  12,
  step-size: 4,
  stroke: stroke(
    paint: gradient.radial(..color.map.rocket),
    thickness: 1pt, join: "round"
  ),
)

//-------------------------------------
// Metadata of the document
//
#let doc= (
  title    : [*Project Name*],
  abbr     : "Prj",
  subtitle : [_Specification_],
  url      : "https://synd.hevs.io",
  logos: (
    tp_topleft  : image("resources/img/synd.svg", height: 1.2cm),
    tp_topright : image("resources/img/hei.svg", height: 1.5cm),
    tp_main     : titlepage_logo,
    header      : image("resources/img/project-logo.svg", width: 2.5cm),
  ),
  authors: (
    (
      name        : "Silvan Zahno",
      abbr        : "ZaS",
      email       : "silvan.zahno@hevs.ch",
    ),
    (
      name        : "Franceso Carrino",
      abbr        : "CrF",
      email       : "francesco.carrino@hevs.ch",
    ),
  ),
  school: (
    name            : "HES-SO Valais//Wallis",
    url             : "https://hevs.ch",
    major           : "Systems Engineering",
    major_url       : "https://synd.hevs.io",
    orientation     : "Infotronics",
    orientation_url : "https://synd.hevs.io/education/infotronics.html",
  ),
  course: (
    name     : "Bachelor Thesis",
    //url      : "https://github.com/user/repo",
    prof     : "Silvan Zahno",
    email    : "silvan.zahno@hevs.ch",
    //class    : [S1f$alpha$],
    semester : "Spring Semester 2026",
  ),
  keywords : ("Typst", "Template", "Report", "HEI-Vs", "Systems Engineering", "Infotronics"),
  version  : "v0.1.0",
)

#let date= datetime.today()

//-------------------------------------
// Settings
//
#let tableof = (
  toc: true,
  tof: false,
  tot: false,
  tol: false,
  toe: false,
  maxdepth: 3,
)

#let gloss    = false
#let appendix = true
#let bib = (
  display : true,
  path  : "/tail/bibliography.bib",
  style : "ieee", //"apa", "chicago-author-date", "chicago-notes", "mla"
)
