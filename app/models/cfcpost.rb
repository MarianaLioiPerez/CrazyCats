class Cfcpost < ApplicationRecord
    has_many :cfccomments, dependent: :destroy 
    has_many :cfcreactions, dependent: :destroy
    has_many :cfcusers, through: :reactions

    has_one_attached :photo
    Kinds = %w[like dislike].freeze
    KindsSpanish = {"like" => "Me gusta", "dislike" => "No me gusta",
    "not_interested" => "No me interesa", "neutral" => "Neutral"}.freeze
end
