class HousewifeSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :city, :image, :current, :seasons, :totalseasons, :taglines, :ratings

  def taglines
    self.object.taglines.map do |tagline_obj|
      num = tagline_obj.season.season
      {"season" => num,
      "tagline" => tagline_obj.tagline}
    end
  end

  def ratings
    self.object.ratings.map do |rating_obj|
      rating_obj.rating
    end
  end

  def city
    season = self.object.seasons.first
    if season
      return season.city
    else
      return nil
    end
  end

  def seasons
    self.object.seasons.map do |season_obj|
      season_obj.season
    end
  end

  def totalseasons
    self.object.seasons.length
  end


end
