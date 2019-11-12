class Housewife < ApplicationRecord
  has_many :taglines
  has_many :ratings
  has_many :favorites
  has_many :seasons, through: :taglines
  has_many :users, through: :ratings

end
