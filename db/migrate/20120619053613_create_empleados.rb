class CreateEmpleados < ActiveRecord::Migration
  def self.up
    create_table :empleados do |t|
      t.string :codigoEmpleado
      t.string :cargo
      t.integer :cantHerramientas

      t.timestamps
    end
  end

  def self.down
    drop_table :empleados
  end
end
