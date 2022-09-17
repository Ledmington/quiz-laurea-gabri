install:
	cd backend
	npm install
	cd ../frontend
	npm install

deploy:
	heroku login
	heroku create quiz-laurea-gabri-backend --region=eu
	heroku git:remote -a quiz-laurea-gabri-backend
	git add .
	git commit -m "deploy $(date '+%y%m%d%H%M')"
	git subtree push --prefix backend heroku main

clean:
	rm -rf backend/node_modules frontend/node_modules
