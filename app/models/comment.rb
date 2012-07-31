class Comment < ActiveRecord::Base
  validates :commenter, :body, :email, :presence => true
  belongs_to :post
end
