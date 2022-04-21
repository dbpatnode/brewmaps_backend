# README

## Ruby version

2.7.1

## System dependencies, in terminal run:

`gem install` <br/>
`gem install bundler`

# Configuration

## Database creation:

Built with postgreSQL: https://www.postgresql.org/download/

once downloaded run in terminal:<br/>
`psql`

then:<br/>
`create database brewmaps_backend_development;`

check to see if database created:<br/>
`\l`

quit out of psql session run:<br/>
`\q`

## Database initialization (local), in terminal run

`rake db:migrate`<br/>
`rake db:seed`

## Bootup local, in terminal run:

`rails s`<br/>

# Deployment instructions

for more information on deployment steps check out:<br/>
https://devcenter.heroku.com/articles/getting-started-with-rails6

but generally speaking this will get ya goin:

1. Commit code and push to heroku<br/>
   `git add .`<br/>
   `git commit -m "<deployment message here>"`<br/>
   `git push heroku master`

2. To Migrate/Seed Database after deployment:<br/>
   migrate<br/>
   `heroku run rake db:migrate`<br/>

seed<br/>
`heroku run rake db:seed`<br/>

3. create web dyno:<br/>
   `heroku ps:scale web=1`<br/>

4. check out deployment:<br/>
   `heroku open`<br/>

## For Deployment debugging and checking logs run

`heroku logs`<br/>
OR<br/>
`heroku logs --tail`<br/>
