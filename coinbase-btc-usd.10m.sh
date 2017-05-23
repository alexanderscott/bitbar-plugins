#!/bin/bash
# <bitbar.title>Coinbase.com Spot rate</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Mat Ryer</bitbar.author>
# <bitbar.author.github>matryer</bitbar.author.github>
# <bitbar.desc>Shows latest spot rate values (in USD) for Bitcoins in the Coinbase exchange.</bitbar.desc>

echo -n "Ƀ"; curl -s "https://api.coinbase.com/v2/prices/BTC-USD/spot" | egrep -o '"amount":"[0-9]+(\.)?([0-9]{0}")?' | sed 's/"amount"://'  | sed 's:^.\(.*\).$:\1:'
