class Post < ApplicationRecord
    has_many :comments, dependent: :destroy 
    has_many :reactions, dependent: :destroy
    has_many :cfcusers, through: :reactions

    has_one_attached :photo
    Kinds = %w[like dislike].freeze
    KindsSpanish = {"like" => "Me gusta", "dislike" => "No me gusta",
    "not_interested" => "No me interesa", "neutral" => "Neutral"}.freeze
end
