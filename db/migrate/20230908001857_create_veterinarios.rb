class CreateVeterinarios < ActiveRecord::Migration[7.0]
  def change
    create_table :veterinarios do |t|
      t.string :nombre
      t.string :apellidos
      t.string :especialidad

      t.timestamps
    end
  end
end
