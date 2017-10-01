class CreateDinnerData < ActiveRecord::Migration[5.1]
  def change
    create_table :dinner_data do |t|
      t.string :dinner_name
      t.integer :family_group_id

      t.timestamps
    end
  end
end
