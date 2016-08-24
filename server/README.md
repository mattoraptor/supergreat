# Project Super Great Server

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

You can auto run tests on file changes by running:

```
$ bundle exec guard
```

You can run the javascript tests by doing:

```
bundle exec teaspoon
```

## Sublime Text 3
I followed some of https://mattbrictson.com/sublime-text-3-recommendations for setting up sublime.
Especially the linter (I want to be idiomatic if possible) and the auto-complete everywhere

For more information, see the
[*Ruby on Rails Tutorial* book](http://www.railstutorial.org/book).