(clear)

(watch rules)
(watch facts)

;; faits
(deffacts informations
  (blessure-crime expeliarmus)
)

(deffacts cours
  (cours vol from-t 9 to-t 12)
  (cours sortilege from-t 9 to-t 12)
  (cours etude-des-moldus  from-t 9 to-t 12)
  (cours botanique from-t 12 to-t 15)
  (cours potions from-t 12 to-t 15)
  (cours yoga from-t 12 to-t 15)
  (cours astronomie from-t 15 to-t 18)
  (cours defense-contre-le-mal from-t 15 to-t 18)
  (cours histoire-de-la-magie from-t 15 to-t 18)
)

(deffacts personnages
  (personnage Hermione)
  (personnage Harry)
  (personnage Malfoy)
  (personnage Ron)
  (personnage Marcus-Flint)
  (personnage Fred-Weasley)
  (personnage Cho-Chang)
)

(deffacts agenda
  (Hermione suit histoire-de-la-magie)
  (Hermione suit yoga)
  (Hermione suit etude-des-moldus)

  (Harry suit vol)
  (Harry suit yoga)
  (Harry suit defense-contre-le-mal)

  (Ron suit sortilege)
  (Ron suit yoga)
  (Ron suit astronomie)

  (Malfoy suit sortilege)
  (Malfoy suit botanique)
  (Malfoy suit defense-contre-le-mal)

  (Marcus-Flint suit etude-des-moldus)
  (Marcus-Flint suit potions)
  (Marcus-Flint suit histoire-de-la-magie)

  (Fred-Weasley suit vol)
  (Fred-Weasley suit botanique)
  (Fred-Weasley suit histoire-de-la-magie)

  (Cho-Chang suit sortilege)
  (Cho-Chang suit yoga)
  (Cho-Chang suit defense-contre-le-mal)
)

(deffacts lieux
  (lieu terrain-de-quidditch) ;; 1
  (lieu chambre-des-secrets)  ;; 2
  (lieu dortoire-gryffondor)  ;; 3
  (lieu dortoire-poufsouffle) ;; 4
  (lieu dortoire-serdaigle)   ;; 5
  (lieu toilettes-des-filles) ;; 6
  (lieu bibliotheque)         ;; 7
  (lieu dortoire-serpentard)  ;; 8
)

(deffacts portes
  ;; 6-1
  (porte de-l terrain-de-quidditch a-l toilettes-des-filles)
  (porte de-l toilettes-des-filles a-l terrain-de-quidditch)

  ;; 6-2
  (porte de-l toilettes-des-filles a-l chambre-des-secrets)
  (porte de-l chambre-des-secrets a-l toilettes-des-filles)

  ;; 2-7
  (porte de-l chambre-des-secrets a-l bibliotheque)
  (porte de-l bibliotheque a-l chambre-des-secrets)

  ;; 7-3-4-5-8
  (porte de-l bibliotheque a-l dortoire-gryffondor)
  (porte de-l bibliotheque a-l dortoire-serdaigle)
  (porte de-l bibliotheque a-l dortoire-poufsouffle)
  (porte de-l bibliotheque a-l dortoire-serpentard)

  (porte de-l dortoire-gryffondor bibliotheque)
  (porte de-l dortoire-serdaigle bibliotheque)
  (porte de-l dortoire-poufsouffle bibliotheque)
  (porte de-l dortoire-serpentard bibliotheque)
)

(deffacts sortileges
  (sortilege expeliarmus)
  (sortilege imperio)
  (sortilege avada-kedavra)
  (sortilege crucio)
  (sortilege alohomora)
  (sortilege accio)
  (sortilege colloportus)
  (sortilege wingardium-leviosa)
)

(deffacts apprentissages
  (vol apprend wingardium-leviosa)
  (yoga apprend accio)
  (yoga apprend alohomora)
  (botanique apprend imperio)
  (potions apprend expeliarmus)
  (potions apprend colloportus)
  (defense-contre-le-mal apprend wingardium-leviosa)
  (defense-contre-le-mal apprend accio)
  (defense-contre-le-mal apprend avada-kedavra)
  (astronomie apprend avada-kedavra)
  (astronomie apprend expeliarmus)
  (histoire-de-la-magie apprend crucio)
  (histoire-de-la-magie apprend imperio)
  (sortilege apprend accio)
  (sortilege apprend colloportus)
  (sortilege apprend alohomora)
)

;; regles
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
