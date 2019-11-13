class User < ApplicationRecord
  has_many :favorites
  has_many :comments
  has_many :ratings
  has_many :housewives, through: :comment
  has_many :housewives, through: :rating
  has_many :housewives, through: :favorite
end
