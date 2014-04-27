class CreateCodeBases < ActiveRecord::Migration
  def change
    create_table :code_bases do |t|
      t.string :name
      t.string :link
      t.references :language, index: true
      t.references :loc, index: true

      t.timestamps
    end
  end
end
