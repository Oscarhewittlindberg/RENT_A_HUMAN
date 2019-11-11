class AddPriceToActors < ActiveRecord::Migration[5.2]
  def change
    add_column :actors, :price, :integer
    add_column :actors, :category, :string
  end
end
