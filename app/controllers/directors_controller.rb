class DirectorsController < ApplicationController

  def index
    render({ :template => "templates/director_templates/index.html.erb"})
  end

end
