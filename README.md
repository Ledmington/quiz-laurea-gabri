# Quiz Laurea Gabri
This project is a simple web application that allows a single user (Gabri) to play a quiz while the others can watch what he's doing.

The app is divided in 2 parts:
 - the server (in `/backend` folder)
 - the web GUI (in `/frontend` folder)

Each one is packaged with a simple Dockerfile. To run it locally, simply run `docker-compose up`.

# To deploy on Heroku
Follow [this](https://dev.to/crrojas88/deploying-a-git-subdirectory-to-heroku-23ld).

`git subtree push --prefix backend heroku main`
