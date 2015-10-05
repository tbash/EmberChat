Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  mount API::Base, at: "/"
  mount GrapeSwaggerRails::Engine, at: "/documentation"
  ActiveAdmin.routes(self)

end
