class CreateArchons < ActiveRecord::Migration[6.0]
  def change
    create_table :archons do |t|
      t.string :name
      t.string :uuid
      t.integer :chains
      t.string :color
      t.references :lodge, null: false, foreign_key: true
    end
  end
end
