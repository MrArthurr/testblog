class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :comment
      t.integer :post_id
      t.timestamps #allways
    end
  end
end
