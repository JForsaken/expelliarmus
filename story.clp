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
  (heure-crime 14) ; pendant le 2e  cours de la journée

  (personnage Harry at-l yoga at-t 14)
  (personnage Harry voit Hermione at-t 14)

  (personnage Harry voit Ron at-t 13)

  (personnage Harry voit Ron lancer Accio)

  (personnage Hermione lance imperio sur Marcus-Flint at-t 12)

  (personnage Marcus-Flint at-l potions at-t 13)
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

(deffacts objets
  (objet hedwige)
  (objet briquet)
  (objet cire-a-chaussure)
  (objet epee-de-gryffondor)
  (objet pierre-philosophale)
  (objet choixpeau)
  (objet coupe-de-feu)
  (objet horloge-de-la-famille-weasley)
  (objet bombe-puante)
  (objet sterilet)
  (objet nimbus-2000)
  (objet porte-poussiere)
  (objet cape-invisibilite) 
)

(deffacts horcruxe
  (objet hedwige est un horcruxe)
  (objet sterilet est un horcruxe)
  (objet porte-poussiere est un horcruxe)
  (objet horloge-de-la-famille-weasley est un horcruxe)
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

(deffacts statut-personnage
  (personnage Hermione est sang-de-bourbe)
  (personnage Harry est sang-pur)
  (personnage Ron est sang-pur)
  (personnage Malfoy est sang-pur)
  (personnage Marcus-Flint est moldu)
  (personnage Fred-Weasley est sang-pur)
  (personnage Cho-Chang est sang-de-bourbe)
)

;(deffacts lieux
;  (lieu terrain-de-quidditch) ;; 1
;  (lieu chambre-des-secrets)  ;; 2
;  (lieu dortoire-gryffondor)  ;; 3
;  (lieu dortoire-poufsouffle) ;; 4
;  (lieu dortoire-serdaigle)   ;; 5
;  (lieu toilettes-des-filles) ;; 6
;  (lieu bibliotheque)         ;; 7
;  (lieu dortoire-serpentard)  ;; 8
;)

;(deffacts portes
;  ;; 6-1
;  (porte de-l terrain-de-quidditch a-l toilettes-des-filles)
;  (porte de-l toilettes-des-filles a-l terrain-de-quidditch)
;
;  ;; 6-2
;  (porte de-l toilettes-des-filles a-l chambre-des-secrets)
;  (porte de-l chambre-des-secrets a-l toilettes-des-filles)
;
;  ;; 2-7
;  (porte de-l chambre-des-secrets a-l bibliotheque)
;  (porte de-l bibliotheque a-l chambre-des-secrets)
;
;  ;; 7-3-4-5-8
;  (porte de-l bibliotheque a-l dortoire-gryffondor)
;  (porte de-l bibliotheque a-l dortoire-serdaigle)
;  (porte de-l bibliotheque a-l dortoire-poufsouffle)
;  (porte de-l bibliotheque a-l dortoire-serpentard)
;
;  (porte de-l dortoire-gryffondor bibliotheque)
;  (porte de-l dortoire-serdaigle bibliotheque)
;  (porte de-l dortoire-poufsouffle bibliotheque)
;  (porte de-l dortoire-serpentard bibliotheque)
;)

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
(defrule prend-baguette
  (personnage ?nom prend baguette)
  =>
  (assert (personnage ?nom possede baguette))
)

(defrule peut-lancer-sortilege
  (not (personnage ?nom est moldu))
  (personnage ?nom possede baguette)
  =>
  (assert (personnage ?nom peut lancer sortilege))
)

; complexe
(defrule vu-par
  (or
    (and
      (personnage ?voit at-l ?lieu at-t ?temps)
      (personnage ?voit voit ?vu at-t ?temps)
    ) 
    (personnage professeur voit ?vu at-t ?temps)
  )
  =>
  (assert (personnage ?vu at-l ?lieu at-t ?temps))
)

; complexe
; A partir du moment ou une personne lance un imperio fructueux, la personne qui
; est controllée est équivalente à la personne qui contrôle.
(defrule lancer-sortilege-succes
  (personnage ?nom connait ?sortilege)
  (personnage ?nom lance ?sortilege sur ?victime at-t ?temps)
  (sortilege-reussi ?nom ?sortilege ?victime ?temps)
  =>
  (assert (personnage ?nom lance succes ?sortilege sur ?victime at-t ?temps))
  (assert (personnage ?victime est atteint par ?sortilege at-t ?temps))
)

(deffunction sortilege-reussi (?nom ?sortilege ?victime ?temps)
  (return 
    (and
      (personnage ?nom peut lancer sortilege)
      (personnage ?nom connait ?sortilege)
      (personnage ?nom lance ?sortilege sur ?victime at-t ?temps)
      (not (personnage ?victime connait expeliarmus))
    )   
  )
)

(defrule se-defend
  (personnage ?nom connait ?sortilege)
  (personnage ?nom lance ?sortilege sur ?victime at-t ?temps)
  (not( sortilege-reussi ?nom ?sortilege ?victime ?temps))
  =>
  (retract (personnage ?nom possede baguette))
)

; complexe
(defrule tuer
  (personnage ?nom connait avada-kedavra)
  (personnage ?nom lance avada-kedavra sur ?victime at-t ?temps)
  (sortilege-reussi ?nom avada-kedavra ?victime ?temps)
  (test(neq ?victime Harry)) 
  (personnage ?nom possede ?objet)
  (not (objet ?objet est un horcruxe))
  =>
  (assert (personnage ?nom est mort))
)

(defrule impact-sortilege
  (personnage ?victime est atteint par ?sortilege at-t ?temps)
  (sortilege ?sortilege entraine ?effet)
  =>
  (personnage ?victime subit ?effet)
)

(defrule voler
  (personnage ?voleur desire ?objet)
  (personnage ?victime possede ?objet)
  (personnage ?voleur connait accio)
  (personnage ?voleur lance accio sur ?victime at-t ?temps)
  (sortilege-reussi ?voleur accio ?victime ?temps)
  =>
  (retract (personnage ?victime possede ?objet))
  (assert (personnage ?voleur possede ?objet))
  (assert (personnage ?victime deteste ?voleur))
)

(defrule prendre-controle
  (personnage ?nom lance succes imperio sur ?victime at-t ?temps)
  (personnage ?victime est atteint par imperio at-t ?temps)
  =>
  (assert (personnage ?nom controle ?victime from-t ?temps))
)

; complexe
(defrule suspect
  (blessure-crime ?blessure)
  (sortilege ?sortilege entraine ?blessure)
  (victime-crime ?victime)
  (personnage ?suspect deteste ?victime)
  (personnage ?suspect connait ?sortilege)
  =>
  (assert (suspect ?suspect))
)

;; complexe
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

;complexe
(defrule le-tueur
  (suspect ?nom)
  (lieu-crime ?lieu)
  (heure-crime ?temps)
  (personnage ?nom at-l ?lieu at-t ?tempsCondition)

  (test (> ?tempsCondition ?temps - 1))
  (test (< ?tempsCondition ?temps + 1))
  =>
  (assert (le-tueur est ?nom))
)

; complexe
(defrule le-vrai-tueur
  (heure-crime ?tempsCrime)
  (personnage ?vraiTueur connait imperio)
  (personnage ?vraiTueur lance imperio sur ?tueur at-t ?temps)
  (personnage ?vraiTueur controle ?tueur from-t ?temps) ; le sort a réussi

  (test (< ?temps ?tempsCrime))

  (le-tueur est ?tueur)
  =>
  (retract (le-tueur est ?tueur))
  (assert (le-tueur est ?vraiTueur))
  (halt)
)

(defrule motif-ami-victime
  (personnage ?nom lance ?sortilege sur ?victime at-t ?temps)
  (personnage ?ami ami de ?victime)
  =>
  (assert (personnage ?ami deteste ?nom))
)

(defrule motif-desirer
  (personnage ?possesseur possede ?objet)
  (personnage ?desireux desire ?objet)
  =>
  (assert (personnage ?desireux deteste ?possesseur))
)

; complexe
(defrule motif-statut
  (personnage ?nomA est ?statut)
  (personnage ?nomB est ?autreStatut)
  ; tout le monde aime hermione, car elle est sexy
  ;(and
  ;  (neq ?nomA Hermione)
  ;  (neq ?nomB Hermione)
  ;)
  (test (neq ?nomA ?nomB))
  (test (neq ?statut ?autreStatut))
  =>
  (assert (personnage ?nomA deteste ?nomB))
  (assert (personnage ?nomB deteste ?nomA))
)

; complexe
(defrule devenir-ami
  (personnage ?nomA est ?statutA)
  (personnage ?nomB est ?statutB)
  ; tout le monde aime hermione, car elle est sexy
 ; (or 
 ;   (test (eq ?nomA Hermione))
 ;   (test (eq ?nomB Hermione))
 ; )

  (test (eq ?statutA ?statutB))
  (test (neq ?nomA ?nomB))
  =>
  (assert (personnage ?nomA ami de ?nomB))
  (assert (personnage ?nomB ami de ?nomA))
)

(reset)
(run)
