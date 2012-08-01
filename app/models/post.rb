class Post < ActiveRecord::Base
  #default_scope :order => 'post_time DESC, title ASC'
  validates :title, :content, :presence => true

  validates :title, :uniqueness => true

  has_many :comments
  has_and_belongs_to_many :categories
end
