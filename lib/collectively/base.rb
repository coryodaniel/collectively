# = Collectively Base Collection
class Collectively::Base
  # Initializes a Collection for a given relation or array of ActiveRecord objects
  attr_reader :collection
  def initialize(relation_or_array)
    @collection = relation_or_array
  end
end