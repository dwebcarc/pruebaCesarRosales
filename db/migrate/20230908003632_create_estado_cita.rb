class CreateEstadoCita < ActiveRecord::Migration[7.0]
  def change
    create_table :estado_cita do |t|
      t.string :nombreEstado

      t.timestamps
    end
  end
end
