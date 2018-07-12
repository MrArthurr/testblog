class RemoveAuhtorId < ActiveRecord::Migration[5.2]
  def change
      remove_column :posts, :auhtor_id, :string
  end
end
