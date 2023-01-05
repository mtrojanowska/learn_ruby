# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :teachers

  root to: 'home#index'
  devise_scope :teacher do
    get '/teachers/sign_out', to: 'devise/sessions#destroy'
  end
end
