#!/bin/bash

#Var
selectel_token="abc_123"

#Request & formatting a number
curl -s \
-H "X-Token: $selectel_token" \
-H 'Content-Type: application/json' \
https://api.selectel.ru/v3/balances | jq -r '.data.billings[].balances_values_sum' | sed 's/..$/.&/g'
