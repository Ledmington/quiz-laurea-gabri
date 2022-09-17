install:
	cd backend
	npm install
	cd ../frontend
	npm install

create_app:
	heroku login
	heroku create quiz-laurea-gabri --region=eu
	heroku git:remote -a quiz-laurea-gabri

deploy:
	heroku login
	heroku git:remote -a quiz-laurea-gabri
	git add .
	git commit -m "deploy $(date '+%y%m%d%H%M')"
	git subtree push --prefix backend heroku master
	git subtree push --prefix frontend/dist origin gh-pages

clean:
	rm -rf backend/node_modules frontend/node_modules
