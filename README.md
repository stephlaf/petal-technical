# README

### Rails 7 API providing access to the CRUD actions on a Psql database of Pokemons

### Usage:
- Clone the repo
```
git clone git@github.com:stephlaf/pokemon-api.git
```
- Run `bundle install`
- Run `rails db:create db:migrate db:seed`
- Launch a server with `rails s`

### Endpoints:
- Read ALL: `GET` `http://localhost:3000/api/v1/pokemons`
- Read ALL, paginated: `GET` `http://localhost:3000/api/v1/pokemons?per_page=50&page=2`
- Read ONE: `GET` `http://localhost:3000/api/v1/pokemons/:id`
- Create: `POST` `http://localhost:3000/api/v1/pokemons`
- Update: `PATCH` `http://localhost:3000/api/v1/pokemons/:id`
- Delete: `DELETE` `http://localhost:3000/api/v1/pokemons/:id`

### Notes:
- `will_paginate` and `api-pagination` gems are used for the pagination
- `jbuilder` gem is used to generate the `json` views
