Spree::Core::Engine.add_routes do
  namespace :admin do
    resource :yotpo_settings, only: [:edit, :update]
  end
end
