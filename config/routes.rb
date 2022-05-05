Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "oldest", :action => "eldest"})
  get("/directors/youngest", { :controller => "youngest", :action => "youngest"})

  get("/directors/:director_id", { :controller => "directors", :action => "display"})
end
