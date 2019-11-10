class RatingSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :housewife
end
