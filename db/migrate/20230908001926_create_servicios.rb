class CreateServicios < ActiveRecord::Migration[7.0]
  def change
    create_table :servicios do |t|
      t.string :nombreServicio
      t.string :descripcionServicio

      t.timestamps
    end
  end
end
