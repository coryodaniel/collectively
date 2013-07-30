class Post < ActiveRecord::Base
  acts_collectively
  has_many :page_views
end
