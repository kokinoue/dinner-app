class AddDinnerToQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    add_column :questionnaires, :dinner1, :integer
    add_column :questionnaires, :dinner2, :integer
    add_column :questionnaires, :dinner3, :integer
    add_column :questionnaires, :dinner4, :integer
  end
end
