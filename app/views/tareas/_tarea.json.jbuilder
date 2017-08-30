json.extract! tarea, :id, :nombre, :user_id, :categoria_id, :estado_id, :fecha_asignacion, :fecha_inicio, :fecha_fin, :fecha_fin_real, :proyecto_id, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)
