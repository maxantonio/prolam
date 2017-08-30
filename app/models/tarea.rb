class Tarea < ApplicationRecord
  belongs_to :user
  belongs_to :categoria
  belongs_to :estado
  belongs_to :proyecto
end
