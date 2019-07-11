class CreateTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :max_people
      t.datetime :date
      t.string :location

      t.timestamps
    end
  end
end
