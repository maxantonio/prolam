class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @iniciadas = current_user.tareas.where(:estado=>3).order(:fecha_fin).limit(10) #iniciadas
    @asignadas = current_user.tareas.where(:estado=>2).or(current_user.tareas.where(:estado=>1)).order(:fecha_fin).limit(10) #asignadas
    @terminadas = current_user.tareas.where(:estado=>4).order(:fecha_fin).limit(10) #terminadas
    @no_asignadas = Tarea.where(:user_id=>nil).limit(10)
  end


end
