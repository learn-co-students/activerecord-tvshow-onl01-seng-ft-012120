class Show < ActiveRecord::Base 
  
  def self.highest_rating
    Show.maximum("rating")
  end
  
  def self.lowest_rating
    Show.minimum("rating")
  end 
  
  def self.most_popular_show
    most_popular_show = Show.find_by(rating: Show.highest_rating)
    most_popular_show
  end 
  
  def self.least_popular_show
    least_popular_show = Show.find_by(rating: Show.lowest_rating)
    least_popular_show
  end 
  
  def self.ratings_sum
    sum_of_ratings = Show.sum(:rating)
    sum_of_ratings
  end 
  
  def self.popular_shows
    Show.where("rating > 5")
  end
  
  def self.shows_by_alphabetical_order 
    Show.order(:name)
  end 
end 