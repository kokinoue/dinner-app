class AddDinnerToAnswerCounts < ActiveRecord::Migration[5.1]
  def change
    add_column :answer_counts, :dinner, :string
    add_column :answer_counts, :questionnaire_id, :integer
  end
end
