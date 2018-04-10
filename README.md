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
Plugin quick and dirty

Donne les 2 prochains passages d'un arrêt (réseau RATP) grâce à la mise à disposition de l'API de la RATP:
https://github.com/pgrimaud/horaires-ratp-api


Fonctionne pour le bus, noctilien, metros et tramways.

Vous devez fournir l'URL de votre arrêt, format:
https://api-ratp.pierre-grimaud.fr/v3/schedules/{type}/{code}/{station}/{way}

{type}=bus,noctilien,metros,tramway.
{code}=N° de ligne.
{station}=nom de votre arrêt.
{way}=A pour Aller, R pour Retour.


## Languages
* Français

## Usage
```
Vous: Quelle est le prochain bus?
Jarvis: je regarde...
Jarvis: prochain bus 8 minutes le suivant dans 21 minutes.
```
