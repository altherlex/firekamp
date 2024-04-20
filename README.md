# FireKamp

Quick chalenging exercise for Firekamp job position as RoR Engineer.

Chalenge: https://firekamp.notion.site/2024-Senior-Backend-Ruby-on-Rails-7fa1b7066f364b929ab17adce27f735a

Video: https://www.loom.com/share/81c26935b88d48179b745309a9c9a6b6?sid=4a34729d-2271-4f5d-a78c-e2e4d0fa3fef

Hey there! In this Loom, I'll be showing you how I used the Pottery API to create a book inventory system. I'll walk you through the process of making requests, loading data, and integrating it with our CMS. I'll also discuss some challenges I faced and potential improvements for the future. Make sure to watch until the end for a quick demo and some final thoughts. Enjoy!



## How to run

```shell
$ bundle install
$ rails s
```

## Libraries Used and Why

CMS Avo was chosen for curiosity and learning on its pluses and mises.
Unfortunalty, the solution has many features that are paid.

Httparty is being used to request the [API](https://potterapi-fedeperin.vercel.app/en/books)

```ruby
ruby 3.0.3
gem 'rails', '~> 6.1.7', '>= 6.1.7.7'
gem 'avo', '>= 3.2'
gem 'sqlite3', '~> 1.4'
gem 'httparty'
gem 'ransack'
```

## What you would do if you had more time:

* [REST API integration](https://docs.avohq.io/2.0/recipes/rest-api-integration)
Integrate the API directly

* [Customize controls (only paid version)](https://docs.avohq.io/3.0/customizable-controls.html)
Remove edit, delete and create.

* Write tests as the code evolves on itself.

---
This project was created listening to Paul Simon and Susan Tedeschi the whole time.