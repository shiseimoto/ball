class CreateFootballs < ActiveRecord::Migration[5.0]
  def change
    create_table :footballs do |t|
      t.string :time
      t.string :league
      t.string :description
      t.string :signal
      t.integer :user_id

      t.timestamps
    end
  end
end
