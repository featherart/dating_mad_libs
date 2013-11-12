DatingMadlibs::Application.routes.draw do
  root to: "stories#index"

  get "stories/select_random_template", as: "random"
  resources :stories
end
