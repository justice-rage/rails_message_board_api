class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.column(:author, :string)
      t.column(:content_body, :string)
      t.column(:group_id, :integer)

      t.timestamps
    end
  end
end
