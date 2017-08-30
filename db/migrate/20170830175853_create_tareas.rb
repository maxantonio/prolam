class CreateTareas < ActiveRecord::Migration[5.1]
  def change
    create_table :tareas do |t|
      t.string :nombre
      t.references :user, foreign_key: true
      t.references :categoria, foreign_key: true
      t.references :estado, foreign_key: true
      t.date :fecha_asignacion
      t.date :fecha_inicio
      t.date :fecha_fin
      t.date :fecha_fin_real
      t.references :proyecto, foreign_key: true

      t.timestamps
    end
  end
end
