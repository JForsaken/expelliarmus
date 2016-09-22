(clear)

(deffacts info
  (blessure-crime expeliarmus)
)

(deffacts courses
  (courses XYZ from-t 5 to-t 8) 
)

(deffacts people
  (personnage Hermione est une sang-de-bourbe)
  (personnage Harry est un magicien)
  (personnage Dumbledore est un vieux)
  (personnage Ron est un roux)
)

(deffacts power
  (spell expeliarmus can be cast from magicien)
  (spell imperio can be cast from qwert)
  (spell avada-kedavra can be cast from qwert)
  (spell crucio can be cast from qwert)
  (spell alohomora can be cast from qwert)
  (spell accio can be cast from qwert)
  (spell colloportus can be cast from qwert)
)

(defrule suspect
  (declare (salience 1))
  (blessure-crime ?spell)
  (spell ?spell can be cast from ?qualifier)
  =>
  (printout t "The spell can be cast by " ?qualifier "."  crlf)
  (assert (the-spell-caster ?qualifier))
)

(defrule final
  (declare (salience 2))
  (the-spell-caster ?qualifier)
  (personnage ?name est un ?qualifier)
  (blessure-crime ?spell can be cast from ?qualifier)
  =>
  (printout t "Le crime a été fiat par un " ?qualifier " nommé " ?name ". Il a utilisé un spell " ?spell "." crlf)
  (assert (the-killer) ?nom)
)

(reset)
(watch facts)
(watch rules)
(run)
