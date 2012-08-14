class Post < ActiveRecord::Base
  default_scope :order => 'updated_at DESC, title ASC'
  validates :title, :content, :presence => true

  validates :title, :uniqueness => true

  has_many :comments, :dependent => :destroy
  belongs_to :category

  def self.search(search)
    if search
      search_condition = "%#{search}%"
      find(:all, :conditions => ['title LIKE ? OR tags LIKE ? OR content LIKE ?', 
          search_condition, search_condition, search_condition])
    else
      find(:all)
    end
  end
end
