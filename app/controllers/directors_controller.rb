class DirectorsController < ApplicationController

  def index
    @director_list = Director.all
    render({ :template => "templates/director_templates/index.html.erb"})
  end


  def display
    @director_id = params.get("director_id")
    @director_list = Director.all
    @this_director = @director_list[@director_id]
    @name = 
    @dob = 
    @image = 
    @bio = 
     
    render({ :template => "templates/director_templates/dynamic.html.erb"})
  end

end
