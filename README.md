## challenge_tech_eric_gdf_mpp
Bienvenue dans mon tech challenge pour MPP !

## Avant le lancement du tech-challenge
J'ai choisi d'installer Flutter sur mon ordinateur car c'est une technologie qui m'intéresse, et grâce à cela je peux travailler dans mon IDE qui est VS Code. J'ai eu des conflits d'installation que j'ai pu régler grâce à StackOverflow.

## Découverte de  Dart & Flutter !

- J'ai choisi de runner le code sur un ordinateur Windows, car je code sous Windows et cela semble être une bonne pratique de garder le même environement (source :  https://codelabs.developers.google.com/codelabs/flutter-codelab-first?hl=fr#2 ). 

- J'ai commencé par comprendre les fondamentaux de Dart grâce à l'introduction à Dart disponible sur le site : https://dart.dev/language. J'ai demandé à OpenAI de m'expliquer le code de base qui se trouvait dans l'application pour comprendre la mécanique. Étant débutant en Dart, j'ai demandé à OpenAI de me créer une cheet sheat sur les fondamentaux de Dart et les bonnes pratiques en termes de code.

- J'ai commencé par suivre les leçons du codelab pour la première application jusqu'à la création de la page, car elles reprennent la plupart des éléments du tech challenge : https://codelabs.developers.google.com/codelabs/flutter-codelab-first?hl=fr#2.

## Créer mon premier widget : Le Bouton ! 

Design : 
    J'ai repris le code vu dans la leçon du codelab en essayant de le simplifier au maximum pour pouvoir me concentrer sur l'essentiel.

Routes : 
    Je suis allé dans la documentation de Flutter pour voir comment créer des routes, et la méthode est claire, je l'ai donc appliqué : https://docs.flutter.dev/cookbook/navigation/navigation-basics


Problème avec les clés :
    Il semble que chaque widget doive avoir une clé. J'ai tapé les termes exacts de mon erreur dans le navigateur et j'ai trouvé le lien Dart correspondant à ce sujet : https://dart-lang.github.io/linter/lints/use_key_in_widget_constructors.html