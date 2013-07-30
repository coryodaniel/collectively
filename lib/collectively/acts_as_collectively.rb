module Collectively
  module ActsAsCollectively
    extend ActiveSupport::Concern
 
    included do
    end
 
    module ClassMethods
      def collectively_as
        [self.collectively_name, :collection].join('_').camelcase
      end
      def acts_collectively(options = {})
        cattr_accessor :collectively_name
        self.collectively_name  = (options[:as] || self.name.pluralize).to_s.underscore
      end
    end
  end
end
 
ActiveRecord::Base.send :include, Collectively::ActsAsCollectively
