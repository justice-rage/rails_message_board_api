class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.column(:name, :string)
      t.column(:cost, :integer)

      t.timestamps()
    end
  end
end
