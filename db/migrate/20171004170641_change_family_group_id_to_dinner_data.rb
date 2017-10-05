class ChangeFamilyGroupIdToDinnerData < ActiveRecord::Migration[5.1]
  #変更後の型
  def up
    change_column :dinner_data, :family_group_id, :string
  end

  #変更前の型
  def down
    change_column :dinner_data, :family_group_id, :integer
  end
end
