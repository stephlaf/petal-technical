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

You will need to specify
- UPDATE `PATCH`
```
http://localhost:3000/api/v1/pokemons/:id
```
- DELETE `DELETE`
```
http://localhost:3000/api/v1/pokemons/:id
```

### Notes:
- For the `CREATE` and the `UPDATE` actions, you must provide a Hash through the `body` of the request, with these specific keys:
```ruby
{
	"po_id": Integer,
	"name": String,
	"type_1": String,
	"type_2": String,
	"total": Integer,
	"hp": Integer,
	"attack": Integer,
	"defense": Integer,
	"sp_atk": Integer,
	"sp_def": Integer,
	"speed": Integer,
	"generation": Integer,
	"legendary": Boolean
}
```
- The `will_paginate` and `api-pagination` gems are used for the pagination
- The `jbuilder` gem is used to generate the `json` views
