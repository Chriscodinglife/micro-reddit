class RemoveColumnsFromComments < ActiveRecord::Migration[7.1]
  def change
    remove_index :comments, :posts_id
    remove_column :comments, :posts_id
  end
end
