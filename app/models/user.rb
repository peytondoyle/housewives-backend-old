class User < ApplicationRecord
  has_many :housewives, through: :comment
  has_many :housewives, through: :rating
  has_many :housewives, through: :favorite
end
