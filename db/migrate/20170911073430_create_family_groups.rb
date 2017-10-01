class CreateFamilyGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :family_groups do |t|
      t.string :family_name
      t.integer :family_group_id
      t.integer :user_id


      t.timestamps
    end
  end
end
