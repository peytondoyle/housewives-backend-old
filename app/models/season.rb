class Season < ApplicationRecord
  has_many :taglines
  has_many :housewives, through: :taglines
end
