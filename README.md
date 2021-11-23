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

--[X] Prueba3. Fallo atributo condicion de vida

     Granja
     Tiene un número de version, usando la sintaxis semántica 0.1.0
     Granja::Funcion
     Tiene una clase para almacenar las funcionalidades
     Tiene un atributo para las condiciones de vida de los animales (FAILED - 1)

     Failures:

     1) Granja Granja::Funcion Tiene un atributo para las condiciones de vida de los animales
     Failure/Error: expect(Granja::Funcion.new("Saludable").condicion_de_vida).not_to eq("Saludable")
     
     ArgumentError:
       wrong number of arguments (given 1, expected 0)
     # ./spec/granja_spec.rb:10:in `initialize'
     # ./spec/granja_spec.rb:10:in `new'
     # ./spec/granja_spec.rb:10:in `block (3 levels) in <top (required)>'

--[X] Prueba4. Pasada atributo condicion de vida

	Granja
        Tiene un número de version, usando la sintaxis semántica 0.1.0
        Granja::Funcion
        Tiene una clase para almacenar las funcionalidades
        Tiene un atributo para las condiciones de vida de los animales

	Finished in 0.00345 seconds (files took 0.1548 seconds to load)
	3 examples, 0 failures

--[X] Prueba5. Fallo atributo cuidado animal

	Granja
        Tiene un número de version, usando la sintaxis semántica 0.1.0
        Granja::Funcion
        Tiene una clase para almacenar las funcionalidades
        Tiene un atributo para las condiciones de vida de los animales
        Tiene un atributo para los cuidados de los animanles (FAILED - 1)

        Failures:

        1) Granja Granja::Funcion Tiene un atributo para los cuidados de los animanles
        Failure/Error: expect(Granja::Funcion.new("1").cuidados).to eq("1")
     
        NoMethodError:
        undefined method `cuidados' for #<Granja::Funcion:0x000056155ef5f310 @condicion_de_vida="1">
        # ./spec/granja_spec.rb:17:in `block (3 levels) in <top (required)>'

	Finished in 0.00372 seconds (files took 0.15275 seconds to load)
	4 examples, 1 failure

--[X] Prueba6. Pasada atributo cuidado animal

	Granja
        Tiene un número de version, usando la sintaxis semántica 0.1.0
        Granja::Funcion
        Tiene una clase para almacenar las funcionalidades
        Tiene un atributo para las condiciones de vida de los animales
        Tiene un atributo para los cuidados de los animanles

	Finished in 0.00356 seconds (files took 0.17577 seconds to load)
	4 examples, 0 failures

--{X] Prueba7. Fallada atributo reproduccion animal

	Granja
        Tiene un número de version, usando la sintaxis semántica 0.1.0
        Granja::Funcion
        Tiene una clase para almacenar las funcionalidades
        Tiene un atributo para las condiciones de vida de los animales
        Tiene un atributo para los cuidados de los animanles
        Tiene un atributo para la reproduccion de los animales (FAILED - 1)

         Failures:

         1) Granja Granja::Funcion Tiene un atributo para la reproduccion de los animales
         Failure/Error:
         def initialize(condicion_vida = "", cuidado = "")
         @condicion_de_vida = condicion_vida
         @cuidado = cuidado
     
        ArgumentError:
        wrong number of arguments (given 3, expected 0..2)
        # ./lib/granja.rb:8:in `initialize'
        # ./spec/granja_spec.rb:24:in `new'
        # ./spec/granja_spec.rb:24:in `block (3 levels) in <top (required)>'

	Finished in 0.00402 seconds (files took 0.15468 seconds to load)
	5 examples, 1 failure

--[X] Prueba8. Pasada atributo reproduccion animal

	Granja
        Tiene un número de version, usando la sintaxis semántica 0.1.0
        Granja::Funcion
        Tiene una clase para almacenar las funcionalidades
        Tiene un atributo para las condiciones de vida de los animales
        Tiene un atributo para los cuidados de los animanles
        Tiene un atributo para la reproduccion de los animales

	Finished in 0.0037 seconds (files took 0.14572 seconds to load)
	5 examples, 0 failures

--[X] Prueba9. Fallada prueba metodo to_S
	
	Granja
       Tiene un número de version, usando la sintaxis semántica 0.1.0
       Granja::Funcion
       Tiene una clase para almacenar las funcionalidades
       Tiene un atributo para las condiciones de vida de los animales
       Tiene un atributo para los cuidados de los animanles
       Tiene un atributo para la reproduccion de los animales
       Tiene un metodo para poder imprimir (FAILED - 1)

       Failures:

       1) Granja Granja::Funcion Tiene un metodo para poder imprimir
       Failure/Error: expect(Granja::Funcion.new("Saludables","Buena","10").to_s).to eq("Las condiciones de vida de los animales son: Saludable \n La calidad de los cuidados es Buena \n y el nivel de reproduccion es 10")
     
       expected: "Las condiciones de vida de los animales son: Saludable \n La calidad de los cuidados es Buena \n y el nivel de reproduccion es 10"
            got: "#<Granja::Funcion:0x000055ddac7a5eb0>"
     
       (compared using ==)
     
       Diff:
       @@ -1,4 +1,2 @@
       -Las condiciones de vida de los animales son: Saludable 
       - La calidad de los cuidados es Buena 
       - y el nivel de reproduccion es 10
       +#<Granja::Funcion:0x000055ddac7a5eb0>
       
        # ./spec/granja_spec.rb:31:in `block (3 levels) in <top (required)>'

	Finished in 0.03462 seconds (files took 0.15347 seconds to load)
	6 examples, 1 failure


--[X] Prueba10. Aprobada prueba metodo to_s
	
	Granja
        Tiene un número de version, usando la sintaxis semántica 0.1.0
        Granja::Funcion
        Tiene una clase para almacenar las funcionalidades
        Tiene un atributo para las condiciones de vida de los animales
        Tiene un atributo para los cuidados de los animanles
        Tiene un atributo para la reproduccion de los animales
        Tiene un metodo para poder imprimir

	Finished in 0.00381 seconds (files took 0.141 seconds to load)
	6 examples, 0 failures

--[X] Prueba11. Fallada prueba de clase Datos

	Failure/Error:
        describe Granja::Datos do
        it "Tiene una clase para almacenar los datos de la granja" do
        expect(Granja::Datos.new()).not_to eq(nil)
        end
        end

	NameError:
  	uninitialized constant Granja::Datos
  	Did you mean?  Data
	# ./spec/granja_spec.rb:38:in `block in <top (required)>'
	# ./spec/granja_spec.rb:1:in `<top (required)>'

--[X] Prueba12 Pasada prueba de clase Datos

	Granja
        Tiene un número de version, usando la sintaxis semántica 0.1.0
        Granja::Funcion
        Tiene una clase para almacenar las funcionalidades
        Tiene un atributo para las condiciones de vida de los animales
        Tiene un atributo para los cuidados de los animanles
        Tiene un atributo para la reproduccion de los animales
        Tiene un metodo para poder imprimir
        Granja::Datos
        Tiene una clase para almacenar los datos de la granja

	Finished in 0.00515 seconds (files took 0.14847 seconds to load)
	7 examples, 0 failures

--[X] Prueba 13 Fallada prueba de atributo identificacion

	Granja
  Tiene un número de version, usando la sintaxis semántica 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproduccion de los animales
    Tiene un metodo para poder imprimir
  Granja::Datos
    Tiene una clase para almacenar los datos de la granja
    Tiene un atributo para la identificacion de la granja (FAILED - 1)

        Failures:

        1) Granja Granja::Datos Tiene un atributo para la identificacion de la granja
         Failure/Error: expect(Granja::Datos.new("Farmer").identificacion).to eq("Farmer")
     
        ArgumentError:
        wrong number of arguments (given 1, expected 0)
        # ./spec/granja_spec.rb:43:in `initialize'
        # ./spec/granja_spec.rb:43:in `new'
        # ./spec/granja_spec.rb:43:in `block (3 levels) in <top (required)>'

	Finished in 0.00482 seconds (files took 0.15429 seconds to load)
	8 examples, 1 failure

--[X] Prueba14 Pasada prueba de atributo identificacion

	Granja
  Tiene un número de version, usando la sintaxis semántica 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproduccion de los animales
    Tiene un metodo para poder imprimir
  Granja::Datos
    Tiene una clase para almacenar los datos de la granja
    Tiene un atributo para la identificacion de la granja

	Finished in 0.00474 seconds (files took 0.14348 seconds to load)
	8 examples, 0 failures

--[X] Prueba15 Fallada prueba de atributo nombre de la granja

	Granja
  Tiene un número de version, usando la sintaxis semántica 0.1.0
  Granja::Funcion
    Tiene una clase para almacenar las funcionalidades
    Tiene un atributo para las condiciones de vida de los animales
    Tiene un atributo para los cuidados de los animanles
    Tiene un atributo para la reproduccion de los animales
    Tiene un metodo para poder imprimir
  Granja::Datos
    Tiene una clase para almacenar los datos de la granja
    Tiene un atributo para la identificacion de la granja
    Tiene un atributo para el nombre de la granja (FAILED - 1)

Failures:

       1) Granja Granja::Datos Tiene un atributo para el nombre de la granja
       Failure/Error:
        def initialize(identificacion = "")
         @identificacion = identificacion
     
       ArgumentError:
        wrong number of arguments (given 2, expected 0..1)
        # ./lib/granja.rb:22:in `initialize'
        # ./spec/granja_spec.rb:50:in `new'
        # ./spec/granja_spec.rb:50:in `block (3 levels) in <top (required)>'

	Finished in 0.00627 seconds (files took 0.14462 seconds to load)
	9 examples, 1 failure

