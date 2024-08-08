class ChangeCommentsReference < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :comments, :posts
        
    change_table :comments do |t|
      t.references :post, null: false, foreign_key: true
    end    
    
  end
end
