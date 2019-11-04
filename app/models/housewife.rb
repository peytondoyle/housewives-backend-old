class Housewife < ApplicationRecord
  has_many :taglines
  has_many :seasons, through: :taglines
end
