require 'test_helper'
require 'rails/generators'
require 'rails/generators/collectively/collection_generator'
class CollectionGeneratorTest < Rails::Generators::TestCase
  tests Collectively::CollectionGenerator
  destination File.expand_path("../tmp", File.dirname(__FILE__))
  setup :prepare_destination

  test "Assert all files are properly created" do
    run_generator ['Locations']
    assert_file "app/collections/locations_collection.rb", /class LocationsCollection < Collectively::Base/
  end
end