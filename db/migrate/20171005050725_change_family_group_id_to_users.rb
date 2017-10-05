class ChangeFamilyGroupIdToUsers < ActiveRecord::Migration[5.1]
  #変更後の型
  def up
    change_column :users, :family_group_id, :string
  end

  #変更前の型
  def down
    change_column :users, :family_group_id, :integer
  end
end
