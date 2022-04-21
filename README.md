# README

- Ruby version
  2.7.1

- System dependencies, in terminal run:
  `gem install`
  `gem install bundler`

- Configuration

- Database creation:
  Built with postgreSQL: https://www.postgresql.org/download/

  once downloaded run in terminal:
  `psql`

  then:
  `create database brewmaps_backend_development;`

  check to see if database created:
  `\l`

  quit out of psql session run:
  `\q`

- Database initialization (local), in terminal run
  `rake db:migrate`
  `rake db:seed`

- if database already seeded and migrated, in terminal run:
  `rails s`

- Deployment instructions

  1. Commit code and push to heroku
     `git add .`
     `git commit -m "<deployment message here>"`
     `git push heroku master`

  2. To Migrate/Seed Database after deployment:
     migrate
     `heroku run rake db:migrate`

  seed
  `heroku run rake db:seed`

  3. create web dyno:
     `heroku ps:scale web=1`

  4. check out deployment:
     `heroku open`

- For Deployment debugging and checking logs run
  `heroku logs`
  OR
  `heroku logs --tail`
