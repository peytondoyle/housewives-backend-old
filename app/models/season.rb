class Season < ApplicationRecord
  has_many :housewives, through: :tagline
end
