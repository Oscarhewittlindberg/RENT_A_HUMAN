class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :location
      t.string :sex
      t.text :bio
      t.string :image

      t.timestamps
    end
  end
end
