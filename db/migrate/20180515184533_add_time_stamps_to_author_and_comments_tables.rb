class AddTimeStampsToAuthorAndCommentsTables < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :created_at, :datetime
    add_column :comments, :updated_at, :datetime
  end
end
