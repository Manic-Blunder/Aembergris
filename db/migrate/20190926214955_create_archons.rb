class CreateArchons < ActiveRecord::Migration[6.0]
  def change
    create_table :archons do |t|
      t.string :name
      t.string :uuid
      t.string :color
      t.integer :chains
      t.integer :wins
      t.integer :losses
      t.integer :sas
      t.integer :aerc
      t.integer :ranky
      t.boolean :win_streaking
      t.belongs_to :lodge, null: false, foreign_key: true
    end
  end
end
