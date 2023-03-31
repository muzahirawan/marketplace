class DropProductFromCatogories < ActiveRecord::Migration[7.0]
  def change
    remove_column :catogories, :product_id

  end
end
