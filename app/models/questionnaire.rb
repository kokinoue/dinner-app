class Questionnaire < ApplicationRecord
  #belongs_to :family_group
  # belongs_to :dinner
  has_many :votings
  has_many :answer_counts
  belongs_to :family_group, primary_key: :family_group_id
end
