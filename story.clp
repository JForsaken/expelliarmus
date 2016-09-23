(clear)

(watch rules)
(watch facts)

;; faits
(deffacts informations
  (blessure-crime expeliarmus)
  (lieu-crime toilettes-des-filles) 

  (personnage Harry at-l yoga at-t 14)
  (personnage Harry voit Hermione at-t 14)

  (personnage Harry voit Ron at-t 13)

  (personnage Harry voit Ron lancer Accio)
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

(deffacts agenda
  (personnage Hermione suit histoire-de-la-magie)
  (personnage Hermione suit yoga)
  (personnage Hermione suit etude-des-moldus)

  (personnage Harry suit vol)
  (personnage Harry suit yoga)
  (personnage Harry suit defense-contre-le-mal)

  (personnage Ron suit sortilege)
  (personnage Ron suit yoga)
  (personnage Ron suit astronomie)

  (personnage Malfoy suit sortilege)
  (personnage Malfoy suit botanique)
  (personnage Malfoy suit defense-contre-le-mal)

  (personnage Marcus-Flint suit etude-des-moldus)
  (personnage Marcus-Flint suit potions)
  (personnage Marcus-Flint suit histoire-de-la-magie)

  (personnage Fred-Weasley suit vol)
  (personnage Fred-Weasley suit botanique)
  (personnage Fred-Weasley suit histoire-de-la-magie)


  (personnage Cho-Chang suit sortilege)
  (personnage Cho-Chang suit yoga)
  (personnage Cho-Chang suit defense-contre-le-mal)
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
  (cours vol apprend wingardium-leviosa)

  (cours yoga apprend accio)
  (cours yoga apprend alohomora)

  (cours botanique apprend imperio)

  (cours potions apprend expeliarmus)
  (cours potions apprend colloportus)

  (cours defense-contre-le-mal apprend wingardium-leviosa)
  (cours defense-contre-le-mal apprend accio)
  (cours defense-contre-le-mal apprend avada-kedavra)

  (cours astronomie apprend avada-kedavra)
  (cours astronomie apprend expeliarmus)

  (cours histoire-de-la-magie apprend crucio)
  (cours histoire-de-la-magie apprend imperio)

  (cours sortilege apprend accio)
  (cours sortilege apprend colloportus)
  (cours sortilege apprend alohomora)
)

;; regles
(defrule vu-par
  (personnage ?voit at-l ?lieu at-t ?temps)
  (personnage ?voit voit ?vu at-t ?temps)
  =>
  (assert (personnage ?vu at-l ?lieu at-t ?temps))
)

(defrule vu-lancer-sortilege
  (personnage ?voit voit ?vu lancer ?sortilege)
  =>
  (assert (personnage ?vu connait ?sortilege))
)

(defrule suspect
  (blessure-crime ?sortilegeCrime)
  (personnage ?nom at-l toilettes-des-filles)
  (personnage ?nom connait ?sortilegeCrime)
  =>
  (assert (suspect personnage ?nom))
)

(defrule aprentissage
  (personnage ?nom suit ?cours)
  (personnage ?nom at-l ?cours at-t ?temps)

  (cours ?cours from-t ?de to-t ?a)
  
  (test (> ?temps ?de))
  (test (< ?temps ?a))

  (cours ?cours apprend ?sortilege)
  =>
  (assert (personnage ?nom connait ?sortilege))
)

(reset)
(run)
