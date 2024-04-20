# FireKamp

API: https://potterapi-fedeperin.vercel.app/en

## Versions:

```ruby
ruby 3.0.3
gem 'rails', '~> 6.1.7', '>= 6.1.7.7'
gem 'avo', '>= 3.2'
gem 'sqlite3', '~> 1.4'
```

## Comands used:

```shell
bin/rails generate model book number:integer pages:integer index:integer title:string originalTitle:string releaseDate:string description:string cover:string
```

## TODO:

* [REST API integration](https://docs.avohq.io/2.0/recipes/rest-api-integration)
* [Customize controls (only paid version)](https://docs.avohq.io/3.0/customizable-controls.html)