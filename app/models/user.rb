class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  belongs_to :family_group, primary_key: :family_group_id, optional: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :family_group_id,
             length: { is: 8 },
             format: { with: /\A[a-z0-9]+\z/i },
             uniqueness: true,
             on: :update


end
