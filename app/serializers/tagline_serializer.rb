class TaglineSerializer < ActiveModel::Serializer
  attributes :tagline, :housewife_id, :season_id
  belongs_to :housewife
  belongs_to :seasons
end
