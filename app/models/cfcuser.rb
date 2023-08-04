class Cfcuser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        has_many :cfccomments
        has_many :cfcposts , through: :reactions
        has_many :cfcreactions

end
