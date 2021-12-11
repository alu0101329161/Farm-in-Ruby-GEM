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

--[X] Prueba16 Pasada prueba de atributo nombre de la granja

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
    Tiene un atributo para el nombre de la granja

	Finished in 0.00507 seconds (files took 0.15177 seconds to load)
	9 examples, 0 failures

--[X] Prueba 17. Fallada prueba de atributo tipo de granja

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
    Tiene un atributo para el nombre de la granja
    Tiene un atributo para el tipo de granja (FAILED - 1)

Failures:

  1) Granja Granja::Datos Tiene un atributo para el tipo de granja
     Failure/Error:
       def initialize(identificacion = "", nombre = "")
         @identificacion = identificacion
         @nombre = nombre
     
        ArgumentError:
        wrong number of arguments (given 3, expected 0..2)
        # ./lib/granja.rb:22:in `initialize'
        # ./spec/granja_spec.rb:57:in `new'
        # ./spec/granja_spec.rb:57:in `block (3 levels) in <top (required)>'

	Finished in 0.00548 seconds (files took 0.15476 seconds to load)
	10 examples, 1 failure

--[X] Prueba18 Pasada prueba atributo de granja

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
    Tiene un atributo para el nombre de la granja
    Tiene un atributo para el tipo de granja

	Finished in 0.00558 seconds (files took 0.15584 seconds to load)
	10 examples, 0 failures

--[X] Prueba 19 Fallada prueba atributo descripcion

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
    Tiene un atributo para el nombre de la granja
    Tiene un atributo para el tipo de granja
    Tiene un atributo para la descripcion de granja (FAILED - 1)

Failures:

  1) Granja Granja::Datos Tiene un atributo para la descripcion de granja
     Failure/Error:
       def initialize(identificacion = "", nombre = "", tipo = "")
         @identificacion = identificacion
         @nombre = nombre
         @tipo = tipo
     
     ArgumentError:
       wrong number of arguments (given 4, expected 0..3)
     # ./lib/granja.rb:22:in `initialize'
     # ./spec/granja_spec.rb:64:in `new'
     # ./spec/granja_spec.rb:64:in `block (3 levels) in <top (required)>'

	Finished in 0.0056 seconds (files took 0.15886 seconds to load)
	11 examples, 1 failure

 
--[X] Prueba20 Pasada prueba atributo descripcion

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
    Tiene un atributo para el nombre de la granja
    Tiene un atributo para el tipo de granja
    Tiene un atribut

--[X] Prueba 21 Fallada prueba atributo descripcion

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
    Tiene un atributo para el nombre de la granja
    Tiene un atributo para el tipo de granja
    Tiene un atributo para la descripcion de granja
    Tiene un atributo para poder impirmir (FAILED - 1)

Failures:

  1) Granja Granja::Datos Tiene un atributo para poder impirmir
     Failure/Error: expect(Granja::Datos.new("1111","FARMERA","agricola","muy cara").to_s).to eq("la identificacion de la granja es: 1111 \n el nombre es: FARMERA \n , el tipo es: agricola \n y la descripcion es: muy cara")
     
       expected: "la identificacion de la granja es: 1111 \n el nombre es: FARMERA \n , el tipo es: agricola \n y la descripcion es: muy cara"
            got: "#<Granja::Datos:0x0000564b488b50f8>"
     
       (compared using ==)
     
       Diff:
       @@ -1,5 +1,2 @@
       -la identificacion de la granja es: 1111 
       - el nombre es: FARMERA 
       - , el tipo es: agricola 
       - y la descripcion es: muy cara
       +#<Granja::Datos:0x0000564b488b50f8>
       
     # ./spec/granja_spec.rb:71:in `block (3 levels) in <top (required)>'

	Finished in 0.02531 seconds (files took 0.14644 seconds to load)
	12 examples, 1 failure

--[X] Prueba 22 Pasada prueba metodo to_s


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
    Tiene un atributo para el nombre de la granja
    Tiene un atributo para el tipo de granja
    Tiene un atributo para la descripcion de granja
    Tiene un atributo para poder impirmir

	Finished in 0.00519 seconds (files took 0.14191 seconds to load)
	12 examples, 0 failures

--[X] Prueba 23 Fallada prueba clase Animal

  Failure/Error:
      describe Animal do
          
        context "Atributos de la clase Animal" do
          it "Tiene una clase para representar animales" do
              expect(Animal.new()).not_to eq(nil)
          end
  
        end
        context "Herencia de la clase Animal" do

NameError:
  uninitialized constant Animal

--[X] Prueba 24 Pasada prueba clase Animal

Granja
  Animal
    Atributos de la clase Animal
      Tiene una clase para representar animales


--[X] Prueba 25 Fallada prueba atributo identificador Animal

Failures:

  1) Granja Animal Atributos de la clase Animal Tiene un atributo para identificar al animal
     Failure/Error: expect(@test1.identificacion).to eq("1111")
     
     NoMethodError:
       undefined method `identificacion' for #<Animal:0x0000561c450ff520>
     # ./spec/animal_spec.rb:15:in `block (4 levels) in <top (required)>'

Finished in 0.00912 seconds (files took 0.16019 seconds to load)
14 examples, 1 failure

--[X] Prueba 26 Pasada prueba atributo identificador Animal

Granja
  Animal
    Atributos de la clase Animal
      Tiene una clase para representar animales
      Tiene un atributo para identificar al animal

--[X] Prueba 26 Fallada prueba atributo edad Animal

Failures:

  1) Granja Animal Atributos de la clase Animal Tiene un atributo con la edad del animal en d´ıas
     Failure/Error: expect(@test1.edad).to eq(284)
     
     NoMethodError:
       undefined method `edad' for #<Animal:0x000055d000fb9250 @identificador="1111">
     # ./spec/animal_spec.rb:22:in `block (4 levels) in <top (required)>'

Finished in 0.00851 seconds (files took 0.15227 seconds to load)
15 examples, 1 failure

--[X] Prueba 27 Pasada prueba atributo edad Animal

Granja
  Animal
    Atributos de la clase Animal
      Tiene una clase para representar animales
      Tiene un atributo para identificar al animal
      Tiene un atributo con la edad del animal en dias

--[X] Prueba 28 Fallada prueba atributo sexo Animal

Failures:

  1) Granja Animal Atributos de la clase Animal Tiene un atributo con el sexo del animal
     Failure/Error: expect(@test1.sexo).to eq("macho")
     
     NoMethodError:
       undefined method `sexo' for #<Animal:0x00005577ded93ce8 @identificador="1111", @edad=284>
     # ./spec/animal_spec.rb:28:in `block (4 levels) in <top (required)>'

Finished in 0.01283 seconds (files took 0.14088 seconds to load)
16 examples, 1 failure

--[X] Prueba 29 Pasada prueba atributo sexo Animal

Granja
  Animal
    Atributos de la clase Animal
      Tiene una clase para representar animales
      Tiene un atributo para identificar al animal
      Tiene un atributo con la edad del animal en dias
      Tiene un atributo con el sexo del animal
      
--[X] Prueba 30 Fallada prueba atributo peso Animal

Failures:

  1) Granja Animal Atributos de la clase Animal Tiene un atributo con el peso del animal en gramos
     Failure/Error: expect(@test1.peso).to eq(9000)
     
     NoMethodError:
       undefined method `peso' for #<Animal:0x0000564e37bd5cf0>
     # ./spec/animal_spec.rb:34:in `block (4 levels) in <top (required)>'

Finished in 0.00826 seconds (files took 0.152 seconds to load)
17 examples, 1 failure

--[X] Prueba 31 Pasada prueba atributo peso Animal

Granja
  Animal
    Atributos de la clase Animal
      Tiene una clase para representar animales
      Tiene un atributo para identificar al animal
      Tiene un atributo con la edad del animal en dias
      Tiene un atributo con el sexo del animal
      Tiene un atributo con el peso del animal en gramos

--[X] Prueba 32 Fallada prueba metodo to_s Animal

Failures:

  1) Granja Animal Atributos de la clase Animal Tiene un metodo para poder imprimir
     Failure/Error: expect(@test1.to_s).to eq("El animal 1111 con 284 dias de vida es macho con un peso de 9000 gramos")
     
       expected: "El animal 1111 con 284 dias de vida es macho con un peso de 9000 gramos"
            got: "#<Animal:0x00005646c11133a8>"
     
       (compared using ==)
     # ./spec/animal_spec.rb:40:in `block (4 levels) in <top (required)>'

Finished in 0.02806 seconds (files took 0.15359 seconds to load)
18 examples, 1 failure

--[X] Prueba 33 Pasada prueba metodo to_s Animal

Granja
  Animal
    Atributos de la clase Animal
      Tiene una clase para representar animales
      Tiene un atributo para identificar al animal
      Tiene un atributo con la edad del animal en dias
      Tiene un atributo con el sexo del animal
      Tiene un atributo con el peso del animal en gramos
      Tiene un metodo para poder imprimir

--[X] Prueba 34 Pasada prueba herencia animal

    Herencia de la clase Animal
      Se espera que una instancia de la clase Animal sea un Animal
      Se espera que una instancia de la clase Animal sea un objeto
      Se espera que una instancia de la clase Animal sea un objeto b´asico
      No se espera que una instancia de la clase Animal sea una cadena
      No se espera que una instancia de la clase Animal sea un numero

      
--[X] Prueba 35 Fallada prueba clase Ganado

Failure/Error:
      describe Ganado do
  
          context "Atributos de la clase Ganado" do
              it "Tiene una clase para representar ganado" do
                  expect(Ganado.new()).not_to eq(nil)
              end
          end

--[X] Prueba 36 Pasada prueba clase Ganado

Granja
  Ganado
    Atributos de la clase Ganado
      Tiene una clase para representar ganado

--[X] Prueba 37 Fallada prueba atributo raza Ganado
      
Failures:

  1) Granja Ganado Atributos de la clase Ganado Tiene un atributo para la raza
     Failure/Error: expect(@test1.raza).to eq("bovino")
     
     NoMethodError:
       undefined method `raza' for #<Ganado:0x0000556c94462160>
     # ./spec/ganado_spec.rb:16:in `block (4 levels) in <top (required)>'

Finished in 0.01456 seconds (files took 0.16253 seconds to load)
25 examples, 1 failure

--[X] Prueba 38 Pasada prueba atributo raza Ganado

Granja
  Ganado
    Atributos de la clase Ganado
      Tiene una clase para representar ganado
      Tiene un atributo para la raza

--[X] Prueba 39 Fallada prueba atributo aprovechamiento Ganado

Failures:

  1) Granja Ganado Atributos de la clase Ganado Tiene un atributo para el tipo de aprovechamiento 
     Failure/Error: expect(@test1.aprovechamiento).to eq("carne")
     
     NoMethodError:
       undefined method `aprovechamiento' for #<Ganado:0x0000560eead96b70>
     # ./spec/ganado_spec.rb:22:in `block (4 levels) in <top (required)>'

Finished in 0.01127 seconds (files took 0.1487 seconds to load)
26 examples, 1 failure

--[X] Prueba 40 Pasada prueba atributo aprovechamiento Ganado

Granja
  Ganado
    Atributos de la clase Ganado
      Tiene una clase para representar ganado
      Tiene un atributo para la raza
      Tiene un atributo para el tipo de aprovechamiento

--[X] Prueba 41 Fallada prueba atributo alimentacion Ganado

Failures:

  1) Granja Ganado Atributos de la clase Ganado Tiene un atributo para su tipo de alimentacion 
     Failure/Error: expect(@test1.alimentacion).to eq("herbívoro")
     
     NoMethodError:
       undefined method `alimentacion' for #<Ganado:0x00005594ae9c08e0>
     # ./spec/ganado_spec.rb:28:in `block (4 levels) in <top (required)>'

Finished in 0.01271 seconds (files took 0.17602 seconds to load)
27 examples, 1 failure

--[X] Prueba 42 Pasada prueba atributo alimentacion Ganado

Granja
  Ganado
    Atributos de la clase Ganado
      Tiene una clase para representar ganado
      Tiene un atributo para la raza
      Tiene un atributo para el tipo de aprovechamiento
      Tiene un atributo para su tipo de alimentacion

--[X] Prueba 43 Fallada prueba metodo to_s Ganado

Failures:

  1) Granja Ganado Atributos de la clase Ganado Se obtiene una cadena con la informacion del ganado correctamente formateada
     Failure/Error: expect(@test1.to_s).to eq("La cabeza de ganado de raza bovino con aprovechamiento tipo carne y herbívoro")
     
       expected: "La cabeza de ganado de raza bovino con aprovechamiento tipo carne y herbívoro"
            got: "El animal 0 con 0 dias de vida es  con un peso de 0 gramos"
     
       (compared using ==)
     # ./spec/ganado_spec.rb:34:in `block (4 levels) in <top (required)>'

Finished in 0.03177 seconds (files took 0.15475 seconds to load)
28 examples, 1 failure

--[X] Prueba 44 Pasada prueba metodo to_s Ganado

Granja
  Ganado
    Atributos de la clase Ganado
      Tiene una clase para representar ganado
      Tiene un atributo para la raza
      Tiene un atributo para el tipo de aprovechamiento
      Tiene un atributo para su tipo de alimentacion
      Se obtiene una cadena con la informacion del ganado correctamente formateada

--[X] Prueba 45 Pasada prueba Herencia clase Ganado

    Herencia de la clase Ganado
      Se espera que una instancia de la clase Ganado sea un Ganado
      Se espera que una instancia de la clase Ganado sea un Animal
      Se espera que una instancia de la clase Ganado sea un objeto
      Se espera que una instancia de la clase Ganado sea un objeto basico
      No se espera que una instancia de la clase Ganado sea una cadena
      No se espera que una instancia de la clase Ganado sea un numero

--[X] Prueba 46 Fallada prueba contador clase Animal

Failures:

  1) Granja Animal Atributos de la clase Animal El Numero de animales instanciados es
     Failure/Error: expect(Animal.count).to eq(4)
     
     NoMethodError:
       undefined method `count' for Animal:Class
     # ./spec/animal_spec.rb:46:in `block (4 levels) in <top (required)>'

Finished in 0.01352 seconds (files took 0.15638 seconds to load)
35 examples, 1 failure

--[X] Prueba 47 Pasada prueba contador clase Animal

Granja
  Animal
    Atributos de la clase Animal
      Tiene una clase para representar animales
      Tiene un atributo para identificar al animal
      Tiene un atributo con la edad del animal en dias
      Tiene un atributo con el sexo del animal
      Tiene un atributo con el peso del animal en gramos
      Se obtiene una cadena con la informacion del animal correctamente formateada
      El Numero de animales instanciados es

--[X] Prueba 48 Fallada prueba comparable clase Animal

Failures:

  1) Granja Animal Comparable animal1 < animal2
     Failure/Error: expect(@test1 < @test2).to eq(true)
     
     NoMethodError:
       undefined method `<' for #<Animal:0x0000563f964bf4c0>
     # ./spec/animal_spec.rb:86:in `block (4 levels) in <top (required)>'

  2) Granja Animal Comparable animal1 <= animal2
     Failure/Error: expect(@test1 <= @test2).to eq(true)
     
     NoMethodError:
       undefined method `<=' for #<Animal:0x0000563f964bde40>
       Did you mean?  <=>
     # ./spec/animal_spec.rb:90:in `block (4 levels) in <top (required)>'

  3) Granja Animal Comparable animal1 > animal2
     Failure/Error: expect(@test2 > @test1).to eq(true)
     
     NoMethodError:
       undefined method `>' for #<Animal:0x0000563f964b7ea0>
     # ./spec/animal_spec.rb:94:in `block (4 levels) in <top (required)>'

  4) Granja Animal Comparable animal1 >= animal2
     Failure/Error: expect(@test3 >= @test4).to eq(true)
     
     NoMethodError:
       undefined method `>=' for #<Animal:0x0000563f964b5fb0>
     # ./spec/animal_spec.rb:98:in `block (4 levels) in <top (required)>'

Finished in 0.01634 seconds (files took 0.15891 seconds to load)
40 examples, 4 failures

--[X] Prueba 49 Pasada prueba comparable clase Animal

    Comparable
      animal1 < animal2
      animal1 <= animal2
      animal1 > animal2
      animal1 >= animal2
      animal1 == animal2

--[X] Prueba 50 Fallada prueba comparable clase Ganado

Failures:

  1) Granja Ganado Comparable ganado1 < ganado2
     Failure/Error: expect(@test1 < @test2).to eq(true)
     
       expected: true
            got: false
     
       (compared using ==)
     
       Diff:
       @@ -1 +1 @@
       -true
       +false
       
     # ./spec/ganado_spec.rb:82:in `block (4 levels) in <top (required)>'

  2) Granja Ganado Comparable ganado1 <= ganado2
     Failure/Error: expect(@test4 < @test1).to eq(true)
     
       expected: true
            got: false
     
       (compared using ==)
     
       Diff:
       @@ -1 +1 @@
       -true
       +false
       
     # ./spec/ganado_spec.rb:87:in `block (4 levels) in <top (required)>'

  3) Granja Ganado Comparable ganado1 > ganado2
     Failure/Error: expect(@test2 > @test1).to eq(true)
     
       expected: true
            got: false
     
       (compared using ==)
     
       Diff:
       @@ -1 +1 @@
       -true
       +false
       
     # ./spec/ganado_spec.rb:90:in `block (4 levels) in <top (required)>'

  4) Granja Ganado Comparable ganado1 >= ganado2
     Failure/Error: expect(@test1 > @test4).to eq(true)
     
       expected: true
            got: false
     
       (compared using ==)
     
       Diff:
       @@ -1 +1 @@
       -true
       +false
       
     # ./spec/ganado_spec.rb:95:in `block (4 levels) in <top (required)>'

  5) Granja Ganado Comparable ganado1 == ganado2
     Failure/Error: expect(@test3 == @test4).to eq(false)
     
       expected: false
            got: true
     
       (compared using ==)
     
       Diff:
       @@ -1 +1 @@
       -false
       +true
       
     # ./spec/ganado_spec.rb:98:in `block (4 levels) in <top (required)>'

--[X] Prueba 51 Pasada prueba comparable clase Ganado

    Comparable
      ganado1 < ganado2
      ganado1 <= ganado2
      ganado1 > ganado2
      ganado1 >= ganado2
      ganado1 == ganado2
      
--[X] Prueba 52 Herencia clase Datos

    Herencia de la clase Datos
      Se espera que una instancia de la clase Ganado sea un Ganado
      Se espera que una instancia de la clase Ganado sea un objeto
      Se espera que una instancia de la clase Ganado sea un objeto basico
      No se espera que una instancia de la clase Ganado sea una cadena
      No se espera que una instancia de la clase Ganado sea un numero

--[X] Prueba 53 Arreglo modulo Funcion

Granja
  Funcion
    Componentes del modulo Funcion
      Existe un modulo para almacenar las funcionalidades
      Existe una constante para representar las condiciones de vida
      Existe un procedimiento para establecer los cuidados de los animales
      Existe un procedimiento para establecer la reproduccion de los animales
    Herencia del modulo Funcion
      Se espera que sea un objeto de la clase Module
      Se espera que sea un objeto (Object)
      Se espera que sea un objeto basico (BasicObject)
      No se espera que sea una instancia de la clase que representa una cadena (String)
      No se espera que sea una instancia de la clase que representa un numero (Numeric)

--[X] Prueba 54 Añadidas pruebas nuevas
  Añadidas pruebas con kind_of 

 --[X] Prueba 55 Herencia de la clase Ganadera

 Granja
  Ganadera
    Herencia de la clase Ganadera
      Se espera que una instancia de la clase Ganadera sea una Granja Ganadera
      Se espera que una instancia de la clase Ganadera sea un Dato
      Se espera que una instancia de la clase Ganadera sea un Object
      Se espera que una instancia de la clase Ganadera sea un Basic Object
      No se espera que una instancia de la clase Ganadera sea un Animal
      No se espera que una instancia de la clase Ganadera sea un Ganado

 --[X] Prueba 56 Error atributos de la clase Ganadera

 Failures:

  1) Granja Ganadera Atributos de la clase Datos Tiene un atributo para el tipo de ganado (bovino, ovino, caprino o porcino)
     Failure/Error: expect(@test1.ganado).to eq(:bovino)
     
     NoMethodError:
       undefined method `ganado' for #<Ganadera:0x00005640134b1780>
     # ./spec/ganadera_spec.rb:55:in `block (4 levels) in <top (required)>'

  2) Granja Ganadera Atributos de la clase Datos Tiene un atributo para el destino de los animales (leche, sacrificio)
     Failure/Error: expect(@test1.destino).to eq(:leche)
     
     NoMethodError:
       undefined method `destino' for #<Ganadera:0x00005640134a7ed8>
     # ./spec/ganadera_spec.rb:61:in `block (4 levels) in <top (required)>'

  3) Granja Ganadera Atributos de la clase Datos Tiene un atributo para el numero de animales de la granja
     Failure/Error: expect(@test1.numero).to eq(50)
     
     NoMethodError:
       undefined method `numero' for #<Ganadera:0x00005640134a6920>
     # ./spec/ganadera_spec.rb:67:in `block (4 levels) in <top (required)>'

  4) Granja Ganadera Atributos de la clase Datos Tiene un atributo para el precio unitario de los animales
     Failure/Error: expect(@test1.precio_unitario).to eq(50.1)
     
     NoMethodError:
       undefined method `precio_unitario' for #<Ganadera:0x00005640134a4eb8>
     # ./spec/ganadera_spec.rb:73:in `block (4 levels) in <top (required)>'

  5) Granja Ganadera Atributos de la clase Datos Tiene un atributo para el precio de venta unitario de los animales
     Failure/Error: expect(@test1.precio_venta).to eq(50.1)
     
     NoMethodError:
       undefined method `precio_venta' for #<Ganadera:0x0000564013497150>
     # ./spec/ganadera_spec.rb:79:in `block (4 levels) in <top (required)>'

  6) Granja Ganadera Atributos de la clase Datos Tiene un atributo para almacenar los animales de la granja
     Failure/Error: expect(@test1.almacen).not_to eq(nil)
     
     NoMethodError:
       undefined method `almacen' for #<Ganadera:0x0000564013494950>
     # ./spec/ganadera_spec.rb:85:in `block (4 levels) in <top (required)>'

