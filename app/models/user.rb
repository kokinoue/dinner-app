class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :, presence: true, uniqueness: true

  belongs_to :family_group, primary_key: :family_group_id, optional: true
  has_many :votings
  validates :family_group_id, length: { is: 8 }, on: :update
  

end
