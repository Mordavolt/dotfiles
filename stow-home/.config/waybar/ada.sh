#!/usr/bin/env python3

import requests

r = requests.get('https://api.kraken.com/0/public/Ticker?pair=ADAEUR');
ticker = r.json()

print('%.2f€' % float(ticker['result']['ADAEUR']['c'][0]))
