class DirectorsController < ApplicationController

  def index
    @director_list = Director.all
    render({ :template => "templates/director_templates/index.html.erb"})
  end

  def eldest
    @director_list = Director.all
    render({ :template => "templates/director_templates/eldest.html.erb"})
  end

  def display
    @director_id = params.fetch("director_id")
    @director_list = Director.all
    this_director = @director_list.where( {:id => @director_id })
 
      @name = this_director[0][:name]
      @dob = this_director[0].fetch(:dob)
      @image = "http://robohash.org/#{@name}"
      @bio = this_director[0].fetch(:bio)

    render({ :template => "templates/director_templates/dynamic.html.erb"})
  end

end
