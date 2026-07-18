class Movie < ApplicationRecord


  def self.all_ratings
    
    ['G', 'PG', 'PG-13', 'R']
  end
  def self.with_ratings(rating_list)
    if rating_list.present?
      where(rating: rating_list)
    else
      all
    end
  end
    
      
end
