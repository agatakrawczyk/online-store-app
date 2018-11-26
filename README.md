# Online store application

## How to get the application up and running

	git clone 
	- clone the repository from GitHub to the current directory 

	cd idea-board-app
	- change the working directory to the application directory 

	bundle install
	- install necessary gems  

	bin/rails db:migrate
	- initialize the database

	bin/rails s
	- run the application on the local server http://127.0.0.1:3000

## Technical requirements
	- ruby '~> 2.3.4' or newer
	- postrgreSQL
	- Bundler 
	- Ruby on Rails '~> 9.5' or newer 

## Deployment instructions (for Heroku)
	
	git push heroku master 
	- deploy the application to Heroku
	
	heroku run rails db:migrate
	- migrate the database 