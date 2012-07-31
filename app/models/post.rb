class Post < ActiveRecord::Base
  #default_scope :order => 'post_time DESC, title ASC'
  validates :title, :content, :presence => true

  validates :title, :uniqueness => true

  has_many :comments
end
