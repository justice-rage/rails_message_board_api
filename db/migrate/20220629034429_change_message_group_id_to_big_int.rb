class ChangeMessageGroupIdToBigInt < ActiveRecord::Migration[5.2]
  def change
    change_column :messages, :group_id, :bigint
  end
end
