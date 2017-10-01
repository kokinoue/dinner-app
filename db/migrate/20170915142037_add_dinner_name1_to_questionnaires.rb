class AddDinnerName1ToQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    add_column :questionnaires, :dinner_name1, :string
    add_column :questionnaires, :dinner_name2, :string
    add_column :questionnaires, :dinner_name3, :string
    add_column :questionnaires, :dinner_name4, :string

  end
end
