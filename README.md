<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->
## Description
Plugin pour l'assistant https://www.openjarvis.com

Donne les 2 prochains passages d'un arrêt (réseau RATP) grâce à la mise à disposition de l'API de la RATP:

https://github.com/pgrimaud/horaires-ratp-api


Fonctionne pour le bus, noctilien, metro et tramway.

Vous devez fournir l'URL de votre arrêt, format:

https://api-ratp.pierre-grimaud.fr/v3/schedules/{type}/{code}/{station}/{way}

{type}=bus, noctilien, metros ou tramways.

{code}=N° de ligne.

{station}=nom de votre arrêt, les espaces sont à remplacer par des +...

Pour connaître l'orthographe exact de votre station, utilisez ce format de lien:

https://api-ratp.pierre-grimaud.fr/v3/stations/{type}/{code}

{way}=A pour Aller, R pour Retour.

Vous avez la possibilité de créer et de tester vos liens dans des sandbox directement depuis ce lien. 

https://api-ratp.pierre-grimaud.fr/v3/documentation#get--schedules-{type}-{code}-{station}-{way}

Merci à Pierre Grimaud pour l'accès à l'API RATP.

## Languages
* Français

## Usage
```
Vous: Quelle est le prochain bus?
Jarvis: je regarde...
Jarvis: prochain bus 8 minutes le suivant dans 21 minutes.
```
```
Vous: Quelle est le prochain train?
Jarvis: je regarde...
Jarvis: prochain train "21:13 Voie 2C" le suivant "21:36 Voie 2C"
```
