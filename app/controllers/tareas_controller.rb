class TareasController < ApplicationController
  before_action :set_tarea, only: [:show, :edit, :update, :destroy, :iniciar]
  before_action :authenticate_user!
  # GET /tareas
  # GET /tareas.json
  def index
    @tareas = Tarea.all
  end

  # GET /tareas/1
  # GET /tareas/1.json
  def show
  end

  # GET /tareas/new
  def new
    @tarea = Tarea.new
    @tarea.estado_id = 1 #CREADA
  end

  # GET /tareas/1/edit
  def edit
  end

  # GET /iniciar/tarea?id=#
  def iniciar
    @tarea.estado_id = 3 # estado iniciada
    @tarea.save()
    redirect_to root_url
  end
  # GET /terminar/tarea?id=#
  def iniciar
    @tarea.estado_id = 3 # estado iniciada
    @tarea.save()
    redirect_to root_url
  end
  # POST /tareas
  # POST /tareas.json
  def create
    @tarea = Tarea.new(tarea_params)

    respond_to do |format|
      if @tarea.save
        format.html { redirect_to @tarea, notice: 'Tarea was successfully created.' }
        format.json { render :show, status: :created, location: @tarea }
      else
        format.html { render :new }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tareas/1
  # PATCH/PUT /tareas/1.json
  def update
    respond_to do |format|
      if @tarea.update(tarea_params)
        format.html { redirect_to @tarea, notice: 'Tarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarea }
      else
        format.html { render :edit }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tareas/1
  # DELETE /tareas/1.json
  def destroy
    @tarea.destroy
    respond_to do |format|
      format.html { redirect_to tareas_url, notice: 'Tarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarea
      @tarea = Tarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tarea_params
      params.require(:tarea).permit(:nombre, :user_id,:categorium_id, :categoria_id, :estado_id, :fecha_asignacion, :fecha_inicio, :fecha_fin, :fecha_fin_real, :proyecto_id)
    end
end
