require 'pry'
class Show < ActiveRecord::Base 
  
  
  def self.highest_rating
    s = Show.maximum('rating')
  end
  
  def self.most_popular_show
    s = Show.highest_rating
    p = Show.find_by "rating == '#{s}'"
  end
  
  def self.lowest_rating
    s = Show.minimum('rating')
  end
  
  def self.least_popular_show
    s = Show.lowest_rating
    p = Show.find_by "rating == '#{s}'"
  end
  
  def self.ratings_sum
    Show.sum('rating')
  end
  
  def self.popular_shows
    s = Show.where("rating > 5")
  end
  
  def self.shows_by_alphabetical_order
    Show.order('name')
  end



end