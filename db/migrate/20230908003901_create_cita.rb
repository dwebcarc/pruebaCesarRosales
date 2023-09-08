class CreateCita < ActiveRecord::Migration[7.0]
  def change
    create_table :cita do |t|
      t.date :fechaHora
      t.string :duracion
      t.references :estado_citum, null: false, foreign_key: true
      t.references :mascota, null: false, foreign_key: true
      t.references :veterinario, null: false, foreign_key: true
      t.references :servicio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
