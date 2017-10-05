class FamilyGroup < ApplicationRecord
  has_many :users, primary_key: :family_group_id
  has_many :questionnaires, primary_key: :family_group_id
  has_many :dinner_data, primary_key: :family_group_id
  validates :family_name, presence: true
  validates :family_group_id, length: { is: 8 }, format: { with: /\A[a-z0-9]+\z/i }, uniqueness: true, on: :create

 end
