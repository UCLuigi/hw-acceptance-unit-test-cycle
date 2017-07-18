class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.director_movies(movie_name)
    movie = Movie.find_by(title: movie_name)
    return nil if movie.nil?
    Movie.where(director: movie.director).pluck(:title)
  end
    
end
