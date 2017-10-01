class RemoveDinnerNameToQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    remove_column :questionnaires, :dinner_name, :string
  end
end
