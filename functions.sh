#!/bin/bash

jv_pg_ratp_bus () {
say "$(ww_lang i_check)"

type="$(echo "$forecast_bus" | cut -d/ "-f6")"

#boucle de mise au propre de $type
case $type in
"bus")
type="busse";;
"metros")
type="métro";;
esac

local json="$(curl -s "$forecast_bus")"
forecast="prochain "$type" $(echo "$json" | jq  ".result.schedules[0].message") le suivant $(echo "$json" | jq  ".result.schedules[1].message")"
say "$(echo "$forecast" | sed "s/mn/minutes/g")"
}

jv_pg_ratp_train () {
say "$(ww_lang i_check)"

local json="$(curl -s "$forecast_train")"

direction="$(echo $forecast_train_direction | sed  -e 's/.*/\U&/' -e s/,/\"\),startswith\(\"/g -e 's/.*/startswith\(\"&/' -e 's/.*/&\"\)/')"
forecast="prochain train $(echo "$json" | jq  "[[.result.schedules[] |  select ( .code|$direction)] | .[] | select (.message|contains(\":\"))]|.[$
say "$(echo "$forecast" | sed "s/00:/minuit /g; s/12:/midi /g")"
}

