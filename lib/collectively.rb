module ActiveRecord
  # = Active Record Relation
  class Relation
    def collection
      @_collection ||= begin
        kollection = ActiveSupport::Dependencies.constantize(klass.collectively_as)
        kollection.new(self)
      end
    end
  end
end

module Collectively;end;
require 'collectively/base'
require 'collectively/acts_as_collectively'
