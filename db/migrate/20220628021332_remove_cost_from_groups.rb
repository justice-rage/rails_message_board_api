class RemoveCostFromGroups < ActiveRecord::Migration[5.2]
  def change
    remove_column :groups, :cost, :integer, {}
  end
end
