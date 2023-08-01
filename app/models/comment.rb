class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :cfcuser
  has_many :reactions, dependent: :destroy
end
