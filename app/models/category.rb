class Category < ActiveRecord::Base
  default_scope :order => 'title'
  has_many :posts
end
