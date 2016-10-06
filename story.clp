;
;              _            _.,----,
;   __  _.-._ / '-.        -  ,._  \) 
;  |  `-)_   '-.   \       / < _ )/" }
;  /__    '-.   \   '-, ___(c-(6)=(6)
;   , `'.    `._ '.  _,'   >\    "  )
;   :;;,,'-._   '---' (  ( "/`. -='/
;  ;:;;:;;,  '..__    ,`-.`)'- '--'
;  ;';:;;;;;'-._ /'._|   Y/   _/' \
;        '''"._ F    |  _/ _.'._   `\
;               L    \   \/     '._  \
;        .-,-,_ |     `.  `'---,  \_ _|
;        //    'L    /  \,   ("--',=`)7
;       | `._       : _,  \  /'`-._L,_'-._
;       '--' '-.\__/ _L   .`'         './/
;                   [ (  /
;                    ) `{
;                    \__)
; _                                       _   _
;| |                                     | | | |           
;| |__   __ _ _ __ _ __ _   _ _ __   ___ | |_| |_ ___ _ __ 
;| '_ \ / _` | '__| '__| | | | '_ \ / _ \| __| __/ _ \ '__|
;| | | | (_| | |  | |  | |_| | |_) | (_) | |_| ||  __/ |   
;|_| |_|\__,_|_|  |_|   \__, | .__/ \___/ \__|\__\___|_|   
;                        __/ | |                           
;                       |___/|_|                           


(clear)

(watch rules)
(watch facts)

;; faits
(deffacts informations
  (blessure-crime marque-de-la-mort) ; il portait cette blessure
  (victime-crime Ron) ; ce personnage est mort
  (lieu-crime toilette) ; dans les toilettes 
  (heure-crime 16) ; pendant le 3e  cours de la journée

  (personnage Marcus-Flint at-l potions at-t 13)
  (personnage Harry at-l yoga at-t 14)

  (personnage Harry voit Ron at-t 10)
  (personnage Harry voit Hermione at-t 14)

  (personnage Ron lance accio sur Harry at-t 11) 
  (personnage Hermione lance imperio sur Marcus-Flint at-t 12)
  (personnage Cho-Chang lance imperio sur Fred-Weasley at-t 12)
  (personnage Malfoy lance avada-kedavra sur Harry at-t 15)

  (personnage Harry possede epee-de-gryffondor) ; indice meurtre
  (personnage Harry possede coupe-de-feu)
  (personnage Hermione possede sterilet)
  (personnage Cho-Chang possede porte-poussiere)
  (personnage Fred-Weasley possede horloge-de-la-famille-weasley)
  (personnage Marcus-Flint possede briquet)

  (personnage Ron desire epee-de-gryffondor)
  (personnage Fred-Weasley desire epee-de-gryffondor)
  (personnage Cho-Chang desire epee-de-gryffondor) ; indice meurtre

  (professeur voit Harry at-t 10)
  (professeur voit Cho-Chang at-t 10)
  (professeur voit Cho-Chang at-t 14)
  ; TODO ajouter plus de professeur voir X at-t T
  (professeur voit Fred-Weasley at-t 10)
  (professeur voit Fred-Weasley at-t 14)
  (professeur voit Malfoy at-t 15)

  (personnage Fred-Weasley besoin envie-uriner at-t 15)
  (personnage Fred-Weasley voit epee-de-gryffondor at-l toilette)

  (personnage Harry aime quidditch)
)

(deffacts cours
  (cours vol from-t 9 to-t 12)
  (cours sortilege from-t 9 to-t 12)
  (cours histoire-de-la-magie from-t 9 to-t 12)
  (cours botanique from-t 12 to-t 15)
  (cours potions from-t 12 to-t 15)
  (cours yoga from-t 12 to-t 15)
  (cours astronomie from-t 15 to-t 18)
  (cours defense-contre-le-mal from-t 15 to-t 18)
  (cours etude-des-moldus  from-t 15 to-t 18)
)

(deffacts lieux
  (lieu toilette satisfait mal-ventre)
  (lieu toilette satisfait envie-uriner)

  (lieu dortoir satisfait envie-socialiser)
  (lieu dortoir satisfait besoin-intimite)

  (lieu cuisine satisfait faim)
  (lieu cuisine satisfait envie-socialiser)
)

(deffacts objets
  (objet hedwige est un horcruxe)
  (objet briquet)
  (objet cire-a-chaussure)
  (objet epee-de-gryffondor)
  (objet pierre-philosophale)
  (objet choixpeau)
  (objet coupe-de-feu)
  (objet horloge-de-la-famille-weasley est un horcruxe)
  (objet bombe-puante)
  (objet sterilet est un horcruxe)
  (objet nimbus-2000)
  (objet porte-poussiere est un horcruxe)
  (objet cape-invisibilite) 
)

(deffacts agenda
  (personnage Hermione suit histoire-de-la-magie)
  (personnage Hermione suit yoga)
  (personnage Hermione suit etude-des-moldus)

  (personnage Harry suit vol)
  (personnage Harry suit yoga)
  (personnage Harry suit defense-contre-le-mal)

  (personnage Ron suit vol)
  (personnage Ron suit yoga)
  (personnage Ron suit astronomie)

  (personnage Malfoy suit sortilege)
  (personnage Malfoy suit botanique)
  (personnage Malfoy suit defense-contre-le-mal)

  (personnage Marcus-Flint suit histoire-de-la-magie)
  (personnage Marcus-Flint suit potions)
  (personnage Marcus-Flint suit etude-des-moldus)

  (personnage Fred-Weasley suit histoire-de-la-magie)
  (personnage Fred-Weasley suit botanique)
  (personnage Fred-Weasley suit astronomie)

  (personnage Cho-Chang suit sortilege)
  (personnage Cho-Chang suit yoga)
  (personnage Cho-Chang suit defense-contre-le-mal)
)

(deffacts statut-personnage
  (personnage Hermione est sang-de-bourbe)
  (personnage Harry est sang-pur)
  (personnage Ron est sang-pur)
  (personnage Malfoy est sang-pur)
  (personnage Marcus-Flint est moldu)
  (personnage Fred-Weasley est sang-pur)
  (personnage Cho-Chang est sang-de-bourbe)
)

(deffacts sortileges
  (sortilege expeliarmus entraine perte-baguette)
  (sortilege imperio entraine perte-controle)
  (sortilege avada-kedavra entraine mort)
  (sortilege crucio entraine marque-de-la-mort)
  (sortilege alohomora entraine ouverture-porte)
  (sortilege accio entraine vol-objet)
  (sortilege colloportus entraine fermeture-porte)
  (sortilege wingardium-leviosa entraine vol-au-dessus-nid-de-coucou)
)

(deffacts apprentissages
  (cours vol apprend wingardium-leviosa)
  (cours vol apprend accio)

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

  (cours histoire-de-la-magie apprend alohomora)
  (cours histoire-de-la-magie apprend crucio)

  (cours sortilege apprend accio)
  (cours sortilege apprend colloportus)
  (cours sortilege apprend imperio)
)

;; regles
(defrule commencer-jour
  (personnage ?nom est ?statut)
  =>
  (assert (personnage ?nom possede baguette))
)

(defrule peut-lancer-sortilege
  (personnage ?nom est ?statut)
  (test (neq ?statut moldu))
  (personnage ?nom possede baguette)
  =>
  (assert (personnage ?nom peut lancer sortilege))
)

(defrule vu-par
  (personnage ?voit at-l ?lieu at-t ?temps)
  (personnage ?voit voit ?vu at-t ?temps)
  =>
  (assert (personnage ?vu at-l ?lieu at-t ?temps))
)

; complexe
(defrule vu-par-enseignant
  (personnage ?vu suit ?cours)
  (cours ?cours from-t ?de to-t ?a)
  (professeur voit ?vu at-t ?temps)

  (test (>= ?temps ?de))
  (test (<= ?temps ?a))
  =>
  (assert (personnage ?vu at-l ?cours at-t ?temps))
)

; complexe
; A partir du moment ou une personne lance un imperio fructueux, la personne qui
; est controllée est équivalente à la personne qui contrôle.
(defrule lancer-sortilege-succes
  (personnage ?nom peut lancer sortilege)
  (personnage ?nom connait ?sortilege)
  (personnage ?nom lance ?sortilege sur ?victime at-t ?temps)
  (not (personnage ?victime connait expeliarmus))
  =>
  (assert (personnage ?nom lance succes ?sortilege sur ?victime at-t ?temps))
  (assert (personnage ?victime est atteint par ?sortilege at-t ?temps))
)

(defrule lancer-sortilege-echec
  (personnage ?nom peut lancer sortilege)
  (personnage ?nom connait ?sortilege)
  (personnage ?nom lance ?sortilege sur ?victime at-t ?temps)
  (personnage ?victime connait expeliarmus)
  =>
  (retract-string (str-cat "(personnage " ?nom " possede baguette)"))
)

(defrule personne-horcruxe
  (personnage ?nom est sang-pur)
  (or
    (test (eq ?nom "Harry"))
    (test (eq ?nom "Voldemort"))
  )
  =>
  (assert (personnage ?nom est personne-horcruxe))
)

(defrule immunite
  (personnage ?tueur lance succes avada-kedavra sur ?victime at-t ?temps)
  (personnage ?victime est personne-horcruxe)
  =>
  (retract-string (str-cat "(personnage " ?victime " subit mort)"))
  (assert (personnage ?victime se protege contre la mort))
)

; complexe
(defrule protection
  (personnage ?tueur lance succes avada-kedavra sur ?victime at-t ?temps)
  (personnage ?victime possede ?objet)
  (objet ?objet est un horcruxe)
  =>
  (retract-string (str-cat "(personnage " ?victime " subit mort)"))
  (retract-string (str-cat "(personnage " ?victime " possede " ?objet ")"))
  (assert (personnage ?victime se protege contre la mort))
)

(defrule impact-sortilege
  (personnage ?victime est atteint par ?sortilege at-t ?temps)
  (sortilege ?sortilege entraine ?effet)
  =>
  (assert (personnage ?victime subit ?effet))
)

; complexe
(defrule voler
  (personnage ?voleur desire ?objet)
  (personnage ?victime possede ?objet)
  (personnage ?voleur lance succes accio sur ?victime at-t ?temps)
  =>
  (retract-string (str-cat "(personnage " ?victime " possede " ?objet ")"))
  (retract-string (str-cat "(personnage " ?victime " ami de " ?voleur")")) 
  (assert (personnage ?voleur possede ?objet))
  (assert (personnage ?victime deteste ?voleur))
)

(defrule prendre-controle
  (personnage ?nom lance succes imperio sur ?victime at-t ?temps)
  (personnage ?victime est atteint par imperio at-t ?temps)
  =>
  (assert (personnage ?nom controle ?victime from-t ?temps))
)

;; not used yet
(defrule perdre
  (personnage ?nom possede ?objet)
  (personnage ?nom perd ?objet)
  =>
  (retract-string (str-cat "(personnage " ?nom " possede " ?objet")"))
  (assert (objet ?objet est perdu))
)

(defrule localiser
  (objet ?objet est perdu)
  (personnage ?nom voit ?objet at-l ?lieu)
  =>
  (retract-string (str-cat "(objet " ?objet " est perdu)"))
  (assert (objet ?objet at-l ?lieu))
)
;;

(defrule prendre
  (personnage ?nom at-l ?lieu at-t ?temps)
  (objet ?objet at-l ?lieu)
  (personnage ?nom desire ?objet)
  =>
  (retract-string (str-cat "(objet " ?objet " at-l " ?lieu ")"))
  (assert (personnage ?nom possede ?objet))
)

; complexe
(defrule suspect
  (blessure-crime ?blessure)
  (sortilege ?sortilege entraine ?blessure)
  (victime-crime ?victime)
;  (personnage ?suspect deteste ?victime)
  (personnage ?suspect connait ?sortilege)
  (not (personnage ?suspect alibi))
  =>
  (assert (suspect ?suspect))
)

; complexe
(defrule aprentissage
  (personnage ?nom suit ?cours)
  (personnage ?nom at-l ?cours at-t ?temps)

  (cours ?cours from-t ?de to-t ?a)
  
  (test (>= ?temps ?de))
  (test (<= ?temps ?a))

  (cours ?cours apprend ?sortilege)
  =>
  (assert (personnage ?nom connait ?sortilege))
)

; complexe
(defrule le-tueur
  (suspect ?nom)
  (lieu-crime ?lieu)
  (heure-crime ?temps)
  (personnage ?nom at-l ?lieu at-t ?tempsCondition)

  (test (>= ?tempsCondition (- ?temps 1)))
  (test (<= ?tempsCondition (+ ?temps 1)))
  =>
  (assert (le-meurtrier est ?nom))
)

; complexe
(defrule le-vrai-tueur
  (le-meurtrier est ?tueur)
  (victime-crime ?victime)
  (heure-crime ?tempsCrime)
  (personnage ?vraiTueur different de ?victime)
  (or
    (personnage ?victime possede ?objet)
    (personnage ?tueur possede ?objet)
  )
  (personnage ?vraiTueur desire ?objet)
  (personnage ?vraiTueur deteste ?victime)
  (personnage ?vraiTueur connait imperio)
  (personnage ?vraiTueur lance imperio sur ?tueur at-t ?temps)
  (personnage ?vraiTueur controle ?tueur from-t ?temps) ; le sort a réussi

  (test (< ?temps ?tempsCrime))
  =>
  (assert (le-vrai-meurtrier est ?vraiTueur))
  (halt)
)

(defrule motif-ami-victime
  (personnage ?nom lance succes ?sortilege sur ?victime at-t ?temps)
  (personnage ?ami ami de ?victime)
  (test (neq ?nom ?ami))
  =>
  (retract-string (str-cat "(personnage " ?ami " ami de " ?nom ")"))
  (assert (personnage ?ami deteste ?nom))
)

(defrule motif-desirer
  (personnage ?possesseur possede ?objet)
  (personnage ?desireux desire ?objet)
  (test (neq ?possesseur ?desireux))
  =>
  (retract-string (str-cat "(personnage " ?desireux " ami de " ?possesseur ")"))
  (assert (personnage ?desireux deteste ?possesseur))
)

; complexe
(defrule motif-statut
  (personnage ?nomA est ?statut)
  (personnage ?nomB est ?autreStatut)
  (test (neq ?nomA ?nomB))
  (test (neq ?statut ?autreStatut))
  =>
  (assert (personnage ?nomA different de ?nomB))
  (assert (personnage ?nomB different de ?nomA))
)

(defrule devenir-ami
  (personnage ?nomA est ?statutA)
  (personnage ?nomB est ?statutB)
  (test (eq ?statutA ?statutB))
  (test (neq ?nomA ?nomB))
  =>
  (assert (personnage ?nomA ami de ?nomB))
  (assert (personnage ?nomB ami de ?nomA))
)

; complexe
(defrule alibi-cours
  (personnage ?nom at-l ?lieu at-t ?temps)
  (cours ?lieu from-t ?de to-t ?a)
  (heure-crime ?temps)
  (test (>= ?temps ?de))
  (test (<= ?temps ?a))
  =>
  (assert (personnage ?nom alibi))
)

(defrule satisfaire-besoin
  (personnage ?nom besoin ?besoin at-t ?temps)
  (lieu ?lieu satisfait ?besoin)
  =>
  (assert (personnage ?nom at-l ?lieu at-t ?temps))
)

(defrule fan-de-quidditch
  (personnage ?nom aime quidditch)
  =>
  (assert (personnage ?nom connait wingardium-leviosa))
)

(defrule aucun-ami
  (personnage ?nom)
  (not (personnage ?nom ami de ?ami))
  =>
  (assert (personnage ?nom besoin envie-socialiser))
)

(defrule est-espion
  (personnage ?nom aime espionner)
  =>
  (assert (personnage ?nom connait alohomora))
  (assert (personnage ?nom desire cape-invisibilite))
)

(defrule resultat-crime
  (victime-crime ?victime) 
  (lieu-crime ?lieu) 
  (heure-crime ?temps) 
  (personnage ?victime possede ?objet)
  =>
  (assert (personnage ?victime perd ?objet))
)

(defrule invisible
  (personnage ?nom possede cape-invisibilite)
  =>
  (personnage ?nom est invisible)
)

(reset)
(run)
