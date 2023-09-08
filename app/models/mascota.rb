class Mascota < ApplicationRecord
  belongs_to :clientes
  has_many :citum
end
