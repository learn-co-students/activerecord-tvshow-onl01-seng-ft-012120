class Show < ActiveRecord::Base

    def self.highest_rating
        Show.all.max_by(&:rating).rating
    end

    def self.most_popular_show
        Show.all.max_by(&:rating)
    end

    def self.lowest_rating
        Show.all.min_by(&:rating).rating
    end

    def self.least_popular_show
        Show.all.min_by(&:rating)
    end

    def self.ratings_sum
        Show.all.map(&:rating).inject(0, &:+)
    end

    def self.popular_shows
        Show.all.reject { |show| show[:rating] < 5 }
    end

    def self.shows_by_alphabetical_order
        Show.all.sort_by(&:name)
    end

end