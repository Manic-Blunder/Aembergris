class CreateJoinTableArchonHouse < ActiveRecord::Migration[6.0]
  def change
    create_join_table :archons, :houses do |t|
      t.index [:archon_id, :house_id]
      t.index [:house_id, :archon_id]
    end
  end
end
