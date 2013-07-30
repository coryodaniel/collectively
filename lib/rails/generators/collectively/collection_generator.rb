require 'rails/generators'
require 'rails/generators/named_base'

module Collectively
  class CollectionGenerator < ::Rails::Generators::NamedBase
    check_class_collision :suffix => "Collection"

    source_root File.expand_path("../templates", __FILE__)

    def create_collection_file
      template 'collection.rb', File.join('app/collections', class_path, "#{file_name}_collection.rb")
    end

    #hook_for :test_framework
  end
end