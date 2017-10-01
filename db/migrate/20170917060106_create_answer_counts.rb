class CreateAnswerCounts < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_counts do |t|





      t.timestamps
    end
  end
end
