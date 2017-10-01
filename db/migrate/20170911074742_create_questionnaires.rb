class CreateQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    create_table :questionnaires do |t|
      t.string :dinner_name
      t.integer :questionnaire_id
      t.integer :family_group_id
      t.integer :dinner_id

      t.timestamps
    end
  end
end
