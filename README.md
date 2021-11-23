# Granja

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/granja`. To experiment with that code, run `bin/console` for an interactive prompt.

Gema para la simulacion de una granja

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'granja'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install granja

## Usage

Para ejecutar la pruebas ejecute el siguiente comando
```ruby
$ rake
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[alu0101329161]/granja.

## Correccion de la versión de la GEMA


--[X] Prueba 1. Fallo en la clase funcion

	Failure/Error:
	```ruby
        describe Granja::Funcion do 
        end
	```

	NameError:
        uninitialized constant Granja::Funcion
	\# ./spec/granja_spec.rb:5:in `block in <top (required)>'
	\# ./spec/granja_spec.rb:1:in `<top (required)>'

	Finished in 0.00006 seconds (files took 0.18351 seconds to load)
	0 examples, 0 failures, 1 error occurred outside of examples


--[X] Prueba 2. Pasada prueba clase funcioN

	Granja
        Tiene un número de version, usando la sintaxis semántica 0.1.0
        Granja::Funcion
        Tiene una clase para almacenar las funcionalidades

	Finished in 0.00343 seconds (files took 0.14275 seconds to load)
	2 examples, 0 failures


