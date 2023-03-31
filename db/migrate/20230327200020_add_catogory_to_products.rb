class AddCatogoryToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :catogory, :string
  end
end
