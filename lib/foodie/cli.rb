require 'thor'
require 'foodie'
require 'foodie/generators/recipe'

module Foodie
  # Thor has a method start that we have referenced in
  # the bin/foodie exec file
  class CLI < Thor
    desc "portray ITEM", "Determine if a piece of food is gross or delicious"
    def portray(name)
      puts Foodie::Food.portray(name)
    end
    
    desc "pluralize", "Pluralizes a word"
    method_option :word, :aliases => "-w"
    def pluralize
      puts Foodie::Food.pluralize(options[:word])
    end

    desc "recipe", "Generates a recipe scaffold"
    def recipe(group, name)
      Foodie::Generators::Recipe.start([group, name])
    end
  end
end
