class Housewife < ApplicationRecord
  has_many :seasons, through: :tagline
end
