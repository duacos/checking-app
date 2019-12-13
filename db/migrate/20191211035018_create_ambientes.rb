class CreateAmbientes < ActiveRecord::Migration[6.0]
  def change
    create_table :ambientes do |t|
      t.string :perimetros
      t.string :controles
      t.string :seguridad
      t.string :proteccion
      t.string :areasSeguras
      t.string :accesoPublico
      t.string :emplazamiento
      t.string :instalaciones
      t.string :cableado
      t.string :mantenimiento
      t.string :salidaActivos
      t.string :seguridadEquipos
      t.string :reutilizacion
      t.string :equipo
      t.string :politica
      t.references :empresa, foreign_key: true
      t.timestamps
    end
  end
end
