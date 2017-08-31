class Tarea < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :categoria, optional: true
  belongs_to :estado, optional: true
  belongs_to :proyecto, optional: true
end
