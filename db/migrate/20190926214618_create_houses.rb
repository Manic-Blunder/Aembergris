class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :icon_link

      t.timestamps
    end
  end
end
