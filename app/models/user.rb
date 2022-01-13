class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, password_length: 8..128

  has_many :templates, dependent: :destroy
  validates_associated :templates
  has_many :recipients_lists, dependent: :destroy
  validates_associated :recipients_lists
  has_many :recipients, dependent: :destroy
  validates_associated :recipients
end
