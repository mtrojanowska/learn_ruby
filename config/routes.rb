# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :teachers

  root to: 'home#index'

  devise_scope :teachers do
    get '/teacher/sign_out', to: 'devise/sessions#destroy'
  end
end
