Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest"})
  get("/directors/youngest", { :controller => "directors", :action => "youngest"})
  get("/directors/:director_id", { :controller => "directors", :action => "display"})

  get("/movies", { :controller => "movies", :action => "list" })
  get("/movies/:movie_id", { :controller => "movies", :action => "movie_details" })
end
