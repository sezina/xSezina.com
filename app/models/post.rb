class Post < ActiveRecord::Base
  validates :title, :content, :presence => true

  validates :title, :uniqueness => true

  has_many :comments
end
