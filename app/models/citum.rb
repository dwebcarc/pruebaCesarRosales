class Citum < ApplicationRecord
  belongs_to :estado_citum
  belongs_to :mascota
  belongs_to :veterinario
  has_and_belongs_to_many :servicio
end
