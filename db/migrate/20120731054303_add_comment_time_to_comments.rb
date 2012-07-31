class AddCommentTimeToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :comment_time, :datetime
  end

  def self.down
    remove_column :comments, :comment_time
  end
end
