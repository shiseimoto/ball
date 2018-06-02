class CreateFoootballs < ActiveRecord::Migration[5.0]
  def change
    create_table :foootballs do |t|
      t.string :time
      t.string :league
      t.text :description
      t.string :signal

      t.timestamps
    end
  end
end
