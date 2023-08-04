class Cfcreaction < ApplicationRecord
  belongs_to :cfccomment
  belongs_to :cfcuser
  belongs_to :cfcpost
end
