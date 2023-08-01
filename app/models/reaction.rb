class Reaction < ApplicationRecord
  belongs_to :post
  belongs_to :cfcuser
  belongs_to :comment
end
