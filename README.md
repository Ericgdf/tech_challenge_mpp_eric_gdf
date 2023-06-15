## challenge_tech_eric_gdf_mpp
Bienvenue dans mon tech challenge pour MPP !

## Avant le lancement du tech-challenge
J'ai choisi d'installer Flutter sur mon ordinateur car c'est une technologie qui m'intéresse, et grâce à cela je peux travailler dans mon IDE qui est VS Code. J'ai eu des conflits d'installation que j'ai pu régler grâce à StackOverflow.

## Découverte de  Dart & Flutter !

- J'ai choisi de runner le code sur un ordinateur Windows, car je code sous Windows et cela semble être une bonne pratique de garder le même environement (source :  https://codelabs.developers.google.com/codelabs/flutter-codelab-first?hl=fr#2 ). 

- J'ai commencé par comprendre les fondamentaux de Dart grâce à l'introduction à Dart disponible sur le site : https://dart.dev/language. J'ai demandé à OpenAI de m'expliquer le code de base qui se trouvait dans l'application pour comprendre la mécanique. Étant débutant en Dart, j'ai demandé à OpenAI de me créer une cheet sheat sur les fondamentaux de Dart et les bonnes pratiques en termes de code.

- J'ai ensuite suivie les leçons du codelab pour la première application jusqu'à la création de la page, car elles reprennent la plupart des éléments du tech challenge : https://codelabs.developers.google.com/codelabs/flutter-codelab-first?hl=fr#2.

## Créer mon premier widget : Le Bouton ! 

Design : 
    J'ai repris le code vu dans la leçon du codelab en essayant de le simplifier au maximum pour pouvoir me concentrer sur l'essentiel.

Routes : 
    Je suis allé dans la documentation de Flutter pour voir comment créer des routes, et la méthode est claire, je l'ai donc appliqué : https://docs.flutter.dev/cookbook/navigation/navigation-basics


Problème avec les clés :
    Il semble que chaque widget doive avoir une clé. J'ai tapé les termes exacts de mon erreur dans le navigateur et j'ai trouvé le lien Dart correspondant à ce sujet : https://dart-lang.github.io/linter/lints/use_key_in_widget_constructors.html

## AppBar widget

Vu que la documentation est très bien faite, j'ai commencé par aller voir comment faire une AppBar : https://api.flutter.dev/flutter/material/AppBar-class.html

Je demande à OpenAI de m'expliquer simplement ce qu'est un Scaffold car jusqu'ici le concept n'était pas très clair et la documentation imprécise.

## Card widget

Je me base sur la création de la BigCard que j'ai faite plus tôt dans les exercices Flutter pour la reproduire avec le modèle de contact.

J'utilise donc la méthode de refactoring pour créer l'objet.

Pour créer mon objet, j'apprends le CSS made in Flutter en regardant directement dans la documentation :

Column : https://api.flutter.dev/flutter/widgets/Column-class.html
Row : https://api.flutter.dev/flutter/widgets/Row-class.html
TextStyle : https://api.flutter.dev/flutter/painting/TextStyle-class.html
Padding : https://api.flutter.dev/flutter/widgets/Padding-class.html
ListView pour le Scroll : https://api.flutter.dev/flutter/widgets/ListView-class.html

## BONUS Pour le clique qui renvoie vers google 

J'ai écrit mon problème dans Google, trouvé ce lien Stack Overflow qui parle de InkWell : https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget. Je suis donc allé voir dans la documentation ce qu'était l'InkWell.

Ensuite, en regardant la documentation officielle d'InkWell, j'ai vu qu'il fallait gérer les dépendances avec url_launcher. Je suis donc allé voir la documentation officielle de cette dernière, disponible ici : https://pub.dev/packages/url_launcher. Étant habitué à la documentation npm avec React, j'ai rapidement compris les onglets et pu mettre en place le lien dynamique. J'ai eu un conflit avec le support des liens symboliques, mais j'ai trouvé la solution sur Stack Overflow : https://stackoverflow.com/questions/68089177/flutter-building-with-plugins-requires-symlink-support.

Pour finir, je demande à OpenAI de m'expliquer ligne par ligne le code de la fonction Future<void> donner sur la page du package, car pour le moment je ne suis pas encore familier avec ce vocabulaire.

## BONUS ajout d'icone copier phone number

J'ai demandé à Google ce qu'était un toast en Flutter.
Je suis arrivé sur cette page Stack Overflow (https://stackoverflow.com/questions/45948168/how-to-create-toast-in-flutter) qui abordait le concept de snackBar.
Je suis donc allé voir la documentation officielle à ce propos (https://docs.flutter.dev/cookbook/design/snackbars). Encore une fois, la doc était claire. J'ai donc gardé cela sous le coude et j'ai cherché dans Google comment créer un icône cliquable en Flutter. Je suis arrivé sur la page de la documentation officielle qui parle des IconButton (https://api.flutter.dev/flutter/material/IconButton-class.html).
J'ai donc allié les deux ensemble.



  
 
