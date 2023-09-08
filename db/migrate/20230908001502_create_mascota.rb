class CreateMascota < ActiveRecord::Migration[7.0]
  def change
    create_table :mascota do |t|
      t.string :nombre
      t.string :especie
      t.string :raza
      t.string :fotoPerfil
      t.string :fechaNacimiento
      t.string :notas
      t.references :clientes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
