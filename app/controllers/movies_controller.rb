class MoviesController < ApplicationController
  def list
    @movie_list = Movie.all
    @director_list = Director.all
    render({ :template => "templates/movie_templates/movie_list.html.erb"})
  end

  def movie_details
      @movie_id = params.fetch("movie_id")
      @director_list = Director.all
      @movie_list = Movie.all
      @this_movie = @movie_list.where( {:id => @movie_id })
 
      @title = @this_movie[0][:title]
      @year = @this_movie[0].fetch(:year)
      @image = "http://robohash.org/#{@title}"
      @description = @this_movie[0].fetch(:description)
      @duration = @this_movie[0].fetch(:duration)
    render({ :template => "templates/movie_templates/dynamic_movie.html.erb"})
  end

end
