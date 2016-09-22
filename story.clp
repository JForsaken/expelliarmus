(clear)

(watch rules)
(watch facts)

(deffacts informations
  (blessure-crime expeliarmus)
)

(deffacts cours
  (course XYZ from-t 5 to-t 8) 
)

(deffacts personnages
  (personnage Hermione est un sang-de-bourbe)
  (personnage Harry est un magicien)
  (personnage Dumbledore est un vieux)
  (personnage Ron est un roux)
)

(deffacts sortileges
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
  (sortilege ?sortilege peut être lancé par ?qualifier)
  =>
  (printout t "Le sortilege peut être lancé par " ?qualifier "."  crlf)
  (assert (lanceur-de-sort ?qualifier))
)

(defrule meurtrier
  (declare (salience 2))
  (lanceur-de-sort ?qualifier)
  (personnage ?nom est un ?qualifier)
  (sortilege ?sortilege peut etre lance a partir de ?qualifier)
  =>
  (printout t "Le crime a été fait par un " ?qualifier " nommé " ?nom ". Il a utilisé un sortilège " ?sortilege "." crlf)
  (assert (le-meurtrier ?nom))
  (halt)
)

(reset)
(run)
