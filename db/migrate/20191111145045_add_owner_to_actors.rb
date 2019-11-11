class AddOwnerToActors < ActiveRecord::Migration[5.2]
  def change
    add_reference :actors, :owner, foreign_key: { to_table: :users }
  end
end
