# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Liste.create([
{:partie => 'immeuble', :pour => 'taux occupation', :nom =>'1 mois/an', :modifiable => false},
{:partie => 'immeuble', :pour => 'taux occupation', :nom =>'2 mois/an', :modifiable => false},
{:partie => 'immeuble', :pour => 'taux occupation', :nom =>'3 mois/an', :modifiable => false},
{:partie => 'immeuble', :pour => 'taux occupation', :nom =>'4 mois/an', :modifiable => false},
{:partie => 'immeuble', :pour => 'taux occupation', :nom =>'5 mois/an', :modifiable => false},
{:partie => 'immeuble', :pour => 'taux occupation', :nom =>'6 mois/an', :modifiable => false},
{:partie => 'immeuble', :pour => 'taux occupation', :nom =>'7 mois/an', :modifiable => false},
{:partie => 'immeuble', :pour => 'taux occupation', :nom =>'8 mois/an', :modifiable => false},
{:partie => 'immeuble', :pour => 'taux occupation', :nom =>'9 mois/an', :modifiable => false},
{:partie => 'immeuble', :pour => 'taux occupation', :nom =>'10 mois/an', :modifiable => false},
{:partie => 'immeuble', :pour => 'taux occupation', :nom =>'11 mois/an', :modifiable => false},
{:partie => 'immeuble', :pour => 'taux occupation', :nom =>'qq jours/an', :modifiable => false},
{:partie => 'immeuble', :pour => 'taux occupation', :nom =>'permanent', :modifiable => false},
{:partie => 'immeuble', :pour => 'type habitat', :nom =>'Résidence principale', :modifiable => false},
{:partie => 'immeuble', :pour => 'type habitat', :nom =>'Résidence secondaire', :modifiable => false},
{:partie => 'immeuble', :pour => 'type habitat', :nom =>'Location permanente', :modifiable => false},
{:partie => 'immeuble', :pour => 'type habitat', :nom =>'Location saisonnière', :modifiable => false},
{:partie => 'immeuble', :pour => 'type habitat', :nom =>'Local commercial', :modifiable => true},
{:partie => 'immeuble', :pour => 'type habitat', :nom =>'Annexe bâti', :modifiable => true},
{:partie => 'immeuble', :pour => 'type habitat', :nom =>'Autre (cf. obs.)', :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>'Cuisine', :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Salle d'eau", :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Salle de bains", :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Salon", :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Séjour", :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Salon-séjour", :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Chambre", :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Bureau", :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Wc", :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Garage", :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Grenier", :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Salle de jeux", :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Annexe", :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Mezzanine", :modifiable => true},
{:partie => 'immeuble', :pour => 'pièce', :nom =>"Divers", :modifiable => true},
{:partie => 'installation', :pour => 'type prétraitement', :nom =>"Bac dégraisseur", :modifiable => true},
{:partie => 'installation', :pour => 'type prétraitement', :nom =>"Fosse septique", :modifiable => true},
{:partie => 'installation', :pour => 'type prétraitement', :nom =>"Fosse Toutes Eaux", :modifiable => true},
{:partie => 'installation', :pour => 'type prétraitement', :nom =>"Préfiltre à pouzzolane", :modifiable => true},
{:partie => 'installation', :pour => 'type prétraitement', :nom =>"Préfiltre à alvéoles", :modifiable => true},
{:partie => 'installation', :pour => 'type prétraitement', :nom =>"Filtre bactérien", :modifiable => true},
{:partie => 'installation', :pour => 'type prétraitement', :nom =>"Filtre à cheminement lent", :modifiable => true},
{:partie => 'installation', :pour => 'type prétraitement', :nom =>"épurateur", :modifiable => true},
{:partie => 'installation', :pour => 'type installation', :nom =>"Existante", :modifiable => false},
{:partie => 'installation', :pour => 'type installation', :nom =>"Projetée", :modifiable => false},
{:partie => 'installation', :pour => 'type installation', :nom =>"Archivée", :modifiable => false},
{:partie => 'installation', :pour => 'matériaux', :nom =>"béton", :modifiable => true},
{:partie => 'installation', :pour => 'matériaux', :nom =>"PVC", :modifiable => true},
{:partie => 'installation', :pour => 'matériaux', :nom =>"PEHD", :modifiable => true},
{:partie => 'installation', :pour => 'matériaux', :nom =>"plastique", :modifiable => true},
{:partie => 'installation', :pour => 'matériaux', :nom =>"composite", :modifiable => true},
{:partie => 'installation', :pour => 'matériaux', :nom =>"grès", :modifiable => true},
{:partie => 'installation', :pour => 'matériaux', :nom =>"fonte", :modifiable => true},
{:partie => 'installation', :pour => 'matériaux', :nom =>"acier", :modifiable => true},
{:partie => 'installation', :pour => 'matériaux', :nom =>"bois", :modifiable => true},
{:partie => 'installation', :pour => 'matériaux', :nom =>"inconnu", :modifiable => true},
{:partie => 'installation', :pour => 'matériaux', :nom =>"autre", :modifiable => true},
{:partie => 'installation', :pour => 'évaluation', :nom =>"bon", :modifiable => true},
{:partie => 'installation', :pour => 'évaluation', :nom =>"moyen", :modifiable => true},
{:partie => 'installation', :pour => 'évaluation', :nom =>"mauvais", :modifiable => true},
{:partie => 'installation', :pour => 'évaluation', :nom =>"sans objet", :modifiable => true},
{:partie => 'installation', :pour => 'évaluation', :nom =>"non vérifié", :modifiable => true},
{:partie => "installation", :pour => 'renseignement', :nom =>"sur déclaration", :modifiable => true},
{:partie => "installation", :pour => 'renseignement', :nom =>"sur observations/mesures", :modifiable => true},
{:partie => "installation", :pour => 'renseignement', :nom =>"sur plan", :modifiable => true},
{:partie => "installation", :pour => 'renseignement', :nom =>"sur facture", :modifiable => true},
{:partie => "installation", :pour => 'renseignement', :nom =>"sur photo", :modifiable => true},
{:partie => "installation", :pour => 'renseignement', :nom =>"sur document(s)", :modifiable => true},
{:partie => "carnet d'adresses", :pour => 'catégories groupe', :nom =>"Spanc", :modifiable => true},
{:partie => "carnet d'adresses", :pour => 'catégories groupe', :nom =>"Mairie", :modifiable => true},
{:partie => "carnet d'adresses", :pour => 'catégories groupe', :nom =>"Bureau étude", :modifiable => true},
{:partie => "carnet d'adresses", :pour => 'catégories groupe', :nom =>"Precripteur", :modifiable => true},
{:partie => "carnet d'adresses", :pour => 'catégories groupe', :nom =>"Terrassier", :modifiable => true},
{:partie => "carnet d'adresses", :pour => 'catégories groupe', :nom =>"Travaux Publics", :modifiable => true},
{:partie => "carnet d'adresses", :pour => 'catégories groupe', :nom =>"Constructeur", :modifiable => true},
{:partie => "carnet d'adresses", :pour => 'catégories groupe', :nom =>"Fournisseur", :modifiable => true},
{:partie => "carnet d'adresses", :pour => 'catégories groupe', :nom =>"Installateur", :modifiable => true},
{:partie => "carnet d'adresses", :pour => 'catégories groupe', :nom =>"Divers", :modifiable => true},
{:partie => "carnet d'adresses", :pour => 'catégories groupe', :nom =>"Autres", :modifiable => true},
{:partie => "carnet d'adresses", :pour => 'type adresse', :nom =>"principale", :modifiable => false},
{:partie => "carnet d'adresses", :pour => 'type adresse', :nom =>"secondaire", :modifiable => false},
{:partie => "carnet d'adresses", :pour => 'type adresse', :nom =>"personnelle", :modifiable => false},
{:partie => "carnet d'adresses", :pour => 'type adresse', :nom =>"professionnelle", :modifiable => false},
{:partie => "carnet d'adresses", :pour => 'type mail', :nom =>"principal", :modifiable => false},
{:partie => "carnet d'adresses", :pour => 'type mail', :nom =>"secondaire", :modifiable => false},
{:partie => "carnet d'adresses", :pour => 'type mail', :nom =>"professionel", :modifiable => false},
{:partie => "carnet d'adresses", :pour => 'type mail', :nom =>"personnel", :modifiable => false},
{:partie => "carnet d'adresses", :pour => 'type téléphone', :nom =>"principal", :modifiable => false},
{:partie => "carnet d'adresses", :pour => 'type téléphone', :nom =>"portable", :modifiable => false},
{:partie => "carnet d'adresses", :pour => 'type téléphone', :nom =>"personnel", :modifiable => false},
{:partie => "carnet d'adresses", :pour => 'type téléphone', :nom =>"ligne directe", :modifiable => false},
{:partie => "carnet d'adresses", :pour => 'type téléphone', :nom =>"standard", :modifiable => false},
{:partie => "carnet d'adresses", :pour => 'type téléphone', :nom =>"fax", :modifiable => false},
{:partie => "commun", :pour => 'commune', :nom =>"MACHIN", :modifiable => true},
{:partie => "commun", :pour => 'commune', :nom =>"a", :modifiable => true},
{:partie => "commun", :pour => 'commune', :nom =>"COMPLETER", :modifiable => true},
{:partie => "commun", :pour => 'secteur', :nom =>"LITTORAL", :modifiable => true},
{:partie => "commun", :pour => 'secteur', :nom =>"NORMAL", :modifiable => true},
{:partie => "Sondage", :pour => 'précipitations', :nom =>"Absence de précipitations au cours du mois passé", :modifiable => true},
{:partie => "Sondage", :pour => 'précipitations', :nom =>"Absence de précipitations au cours de la semaine passée", :modifiable => true},
{:partie => "Sondage", :pour => 'précipitations', :nom =>"Absence de précipitations au cours des trois derniers jours", :modifiable => true},
{:partie => "Sondage", :pour => 'précipitations', :nom =>"Pluvieux, mais sans fortes précipitations au cours des 3 derniers jours", :modifiable => true},
{:partie => "Sondage", :pour => 'précipitations', :nom =>"Pluie modérée depuis plusieurs jours ou forte pluie la veille de l'observation", :modifiable => true},
{:partie => "Sondage", :pour => 'précipitations', :nom =>"Très forte précipitations ou chute de neige ou inondation juste avant l'observation", :modifiable => true},
{:partie => "Sondage", :pour => 'précipitations', :nom =>"Non renseigné", :modifiable => true},
{:partie => "Sondage", :pour => 'sondage', :nom =>"Tarière à main", :modifiable => true},
{:partie => "Sondage", :pour => 'sondage', :nom =>"Tarière mécanique", :modifiable => true},
{:partie => "Sondage", :pour => 'sondage', :nom =>"Tractopelle", :modifiable => true},
{:partie => "Sondage", :pour => 'sondage', :nom =>"Fosse existante", :modifiable => true},
{:partie => "Sondage", :pour => 'sondage', :nom =>"Cavité naturelle", :modifiable => true},
{:partie => "Sondage", :pour => 'hydromorphie', :nom =>"Sec", :modifiable => true},
{:partie => "Sondage", :pour => 'hydromorphie', :nom =>"légèrement humide", :modifiable => true},
{:partie => "Sondage", :pour => 'hydromorphie', :nom =>"humide", :modifiable => true},
{:partie => "Sondage", :pour => 'hydromorphie', :nom =>"très humide", :modifiable => true},
{:partie => "Sondage", :pour => 'hydromorphie', :nom =>"saturé", :modifiable => true},
{:partie => "Sondage", :pour => 'hydromorphie', :nom =>"inondé", :modifiable => true},
{:partie => "Sondage", :pour => 'hydromorphie', :nom =>"non observé", :modifiable => true},
{:partie => "Sondage", :pour => 'abondance', :nom =>"Aucun(e)", :modifiable => true},
{:partie => "Sondage", :pour => 'abondance', :nom =>"très peu (0-2%)", :modifiable => true},
{:partie => "Sondage", :pour => 'abondance', :nom =>"peu (2-5%)", :modifiable => true},
{:partie => "Sondage", :pour => 'abondance', :nom =>"moyen (5-15%)", :modifiable => true},
{:partie => "Sondage", :pour => 'abondance', :nom =>"nombreux(se) (15-40%)", :modifiable => true},
{:partie => "Sondage", :pour => 'abondance', :nom =>"abondant(e) (40-80%)", :modifiable => true},
{:partie => "Sondage", :pour => 'abondance', :nom =>"dominant(e) (>80%)", :modifiable => true},
{:partie => "Sondage", :pour => 'abondance', :nom =>"non renseigné", :modifiable => true},
{:partie => "Sondage", :pour => 'compacité', :nom =>"meuble", :modifiable => true},
{:partie => "Sondage", :pour => 'compacité', :nom =>"légèrement compact", :modifiable => true},
{:partie => "Sondage", :pour => 'compacité', :nom =>"compact", :modifiable => true},
{:partie => "Sondage", :pour => 'compacité', :nom =>"très compact", :modifiable => true},
])
