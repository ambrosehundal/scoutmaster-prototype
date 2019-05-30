class AddReferenceToAwards < ActiveRecord::Migration[5.2]
  def change
    add_reference :awards_and_honors, :profile, foreign_key: true
  end
end
