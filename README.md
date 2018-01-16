Run with a volume for your jars and properties.

docker run -d -v $PWD/ProfitTrailer:/opt/ProfitTrailer beemster/profit-trailer

If you didn't have any properties files yet, they will be created and the container will exit.

Edit as needed and run it again:

docker run -d -v $PWD/ProfitTrailer:/opt/ProfitTrailer beemster/profit-trailer

This time it should stay running and you can access it via http://127.0.0.1:8081

Enjoy.
