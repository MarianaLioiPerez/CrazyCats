class Cfccomment < ApplicationRecord
  belongs_to :cfcpost
  belongs_to :cfcuser
  has_many :cfcreactions, dependent: :destroy
end
