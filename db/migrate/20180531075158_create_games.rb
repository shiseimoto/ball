class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :time
      t.text :league
      t.text :signal

      t.timestamps
    end
  end
end
