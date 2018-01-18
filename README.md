Profit Trailer is a bot to trade on Crypto currency exchanges.

It requires a paid license and it will trade on Binance, Bittrex and Poloniex.

* Main site: https://profittrailer.com/
* Wiki: https://wiki.profittrailer.io/



# Invocation

Start it up with a volume for your jars and property files.

```
docker run -d -v $PWD/ProfitTrailer:/opt/ProfitTrailer bram/profittrailer
```

If you don't have any properties files yet, they will be created and the container will exit.

Edit as needed and run it again:

```
docker run -d -v $PWD/ProfitTrailer:/opt/ProfitTrailer -p 127.0.0.1:8081:8081 bram/profittrailer
```

This time it should stay running and you can access it via http://127.0.0.1:8081



Enjoy.
