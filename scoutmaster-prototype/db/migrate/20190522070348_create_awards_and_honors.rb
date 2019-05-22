class CreateAwardsAndHonors < ActiveRecord::Migration[5.2]
  def change
    create_table :awards_and_honors do |t|
      t.string :award_name
      t.string :description
      t.date :year
      t.string :organization

      t.timestamps
    end
  end
end
