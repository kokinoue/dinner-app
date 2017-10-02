class FamilyGroup < ApplicationRecord
  has_many :users, primary_key: :family_group_id
  has_many :questionnaires, primary_key: :family_group_id
  has_many :dinner_data, primary_key: :family_group_id
  validates :family_name, presence: true
  validates :family_group_id, length: { is: 8 }, uniqueness: true, on: :create
  # validate :add_error_sample

#   def add_error_sample
#     # nameが空のときにエラーメッセージを追加する
#     if family_name.empty?
#       errors.add(:family_name, "に関係するエラーを追加")
#       errors[:base] << "モデル全体に関係するエラーを追加"
#     end
#   end
 end
