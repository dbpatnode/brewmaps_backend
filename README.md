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

- Database initialization, in terminal run
  `rake db:migrate`
  `rake db:seed`
  `rails s`

- Deployment instructions

- ...
