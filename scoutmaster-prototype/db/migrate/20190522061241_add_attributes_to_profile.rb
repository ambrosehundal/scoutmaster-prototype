class AddAttributesToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :headline, :string
    add_column :profiles, :summary, :string
    add_column :profiles, :age, :integer
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
  end
end
