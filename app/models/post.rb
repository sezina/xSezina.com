class Post < ActiveRecord::Base
  default_scope :order => 'updated_at DESC, title ASC'
  validates :title, :content, :presence => true

  validates :title, :uniqueness => true

  has_many :comments, :dependent => :destroy
  belongs_to :category
end
