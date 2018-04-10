
#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh

jv_pg_ratp_bus () {
#    local day_num=${1:-0}
    say "$(ww_lang i_check)"

    local json="$(curl -s "$forecast_bus")"
#    local json="$(curl -s "https://api-ratp.pierre-grimaud.fr/v3/schedules/bus/258/les+fontenelles/R")"
# https://api-ratp.pierre-grimaud.fr/v3/schedules/bus/258/les+fontenelles/R
 #   $verbose && jv_debug "json: $json"
#forecast="prochain busse $(echo "$json" | jq  ".result.schedules[0].message") le suivant $(echo "$json" | jq  ".result.schedules[1].message")"
forecast="prochain busse $(echo "$json" | jq  ".result.schedules[0].message") le suivant $(echo "$json" | jq  ".result.schedules[1].message")"
#local humanized =
say "$(echo "$forecast" | sed "s/mn/minutes/g")"
#say "$(echo "$forecast" | sed "s/mn/minutes/g" | sed "s/V\./voie /g" | sed "s/voie/voie minutes/g")"

#echo $json
#say "$forecast"
}
