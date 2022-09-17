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
	git add .
	git commit -m "deploy $(date '+%y%m%d%H%M')"
	git push heroku main

clean:
	rm -rf backend/node_modules frontend/node_modules
