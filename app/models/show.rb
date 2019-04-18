class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    all.order(:rating).last
  end
  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    all.order(:rating).first
  end

  def ratings_sum
    Show.sum(:rating)
  end

end
