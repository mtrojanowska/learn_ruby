class HomeController < ApplicationController
  skip_before_action :authenticate_teacher!
  def index; end

  def dashboard; end
end
