class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @tareas = current_user.tareas
  end
end
