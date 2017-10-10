class AddUserIdToAnswerCounts < ActiveRecord::Migration[5.1]
  def change
    add_column :answer_counts, :user_id, :integer
  end
end
