# README

### Rails 7 API providing access to the CRUD actions on a Postgresql database of Pokemons

### Usage:
- Clone the repo
```
git clone git@github.com:stephlaf/pokemon-api.git
```
- Install the gems
```
bundle install
```
- Create the DB & seed
```
rails db:create db:migrate db:seed
```
- Launch a server with `rails s`

### Endpoints:
- READ ALL `GET`
```
http://localhost:3000/api/v1/pokemons
```
- READ ALL, paginated `GET`
```
http://localhost:3000/api/v1/pokemons?per_page=50&page=2
```
- READ ONE `GET`
```
http://localhost:3000/api/v1/pokemons/:id
```
- CREATE `POST`
```
http://localhost:3000/api/v1/pokemons
```
- UPDATE `PATCH`
```
http://localhost:3000/api/v1/pokemons/:id
```
- DELETE `DELETE`
```
http://localhost:3000/api/v1/pokemons/:id
```

### Notes:
- The `will_paginate` and `api-pagination` gems are used for the pagination
- The `jbuilder` gem is used to generate the `json` views
