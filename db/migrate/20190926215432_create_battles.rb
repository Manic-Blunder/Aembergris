class CreateBattles < ActiveRecord::Migration[6.0]
  def change
    create_table :battles do |t|
      t.belongs_to :lodge, null: false, foreign_key: true
      t.references :archon_one
      t.references :archon_two
      t.timestamps
    end

    add_foreign_key :battles, :archons, column: :archon_one_id, primary_key: :id
    add_foreign_key :battles, :archons, column: :archon_two_id, primary_key: :id
  end
end
