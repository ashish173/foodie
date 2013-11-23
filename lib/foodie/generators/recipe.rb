require 'thor/group'

module Foodie
  module Generators
    class Recipe < Thor::Group  # Group module inheriting shows we are defining a generator rather than a cli
      
      include Thor::Actions # Action module defines helper methods for our generators which include 
                            # thelikes of those able to create file and directories

      argument :group, :type => :string   # these are the formal parameters
      argument :name, :type => :string    
      
      def self.source_root
        File.dirname(__FILE__) + "/recipe"  # source path is currentfilepath + '/recipe' here
      end

      def create_group   # creates a directory
        empty_directory(group)
      end

      def copy_recipe   # creates a txt
        template("recipe.txt", "#{group}/#{name}.txt")
      end
    end
  end
end
