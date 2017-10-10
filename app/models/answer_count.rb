class AnswerCount < ApplicationRecord
  belongs_to :questionnaire
  belongs_to :user
  validates :user_id, uniqueness: {:scope => :questionnaire_id}
end
