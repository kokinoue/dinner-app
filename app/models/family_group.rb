class FamilyGroup < ApplicationRecord
  has_many :users, primary_key: :family_group_id
  has_many :questionnaires, primary_key: :family_group_id
  has_many :dinner_data, primary_key: :family_group_id
  validates :family_group_id, length: { is: 8 }, on: :create
  validates :family_group_id, uniqueness: true
end
