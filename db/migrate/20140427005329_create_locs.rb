class CreateLocs < ActiveRecord::Migration
  def change
    create_table :locs do |t|
      t.string :range

      t.timestamps
    end
  end
end
