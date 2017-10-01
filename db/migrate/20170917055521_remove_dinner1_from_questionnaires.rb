class RemoveDinner1FromQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    remove_column :questionnaires, :dinner1, :integer
    remove_column :questionnaires, :dinner2, :integer
    remove_column :questionnaires, :dinner3, :integer
    remove_column :questionnaires, :dinner4, :integer
  end
end
