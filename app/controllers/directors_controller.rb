class DirectorsController < ApplicationController

  def index
    @director_list = Director.all
    render({ :template => "templates/director_templates/index.html.erb"})
  end

  def eldest
    @the_oldest = Director.all.where.not({:dob => nil}).order({:dob => :asc}).first
    @oldest_id = @the_oldest[:id]
    @oldest_name = @the_oldest[:name]
    @oldest_dob = @the_oldest[:dob]
    render({ :template => "templates/director_templates/eldest.html.erb"})
  end

  def youngest
    @the_youngest = Director.all.where.not({:dob => nil}).order({:dob => :desc}).first
     @youngest_id = @the_youngest[:id]
     @youngest_name = @the_youngest[:name]
     @youngest_dob = @the_youngest[:dob]
     render({ :template => "templates/director_templates/youngest.html.erb"})
   end

  def display

      @director_id = params.fetch("director_id")
      @director_list = Director.all
      this_director = @director_list.where( {:id => @director_id })
 
      @name = this_director[0][:name]
      @dob = this_director[0].fetch(:dob)
      @image = "http://robohash.org/#{@name}"
      @bio = this_director[0].fetch(:bio)

      @movie_list = Movie.all
      @filmography_movies = @movie_list.where( {:director_id => @director_id})

    render({ :template => "templates/director_templates/dynamic.html.erb"})
  end

end
