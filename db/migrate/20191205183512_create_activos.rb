class CreateActivos < ActiveRecord::Migration[6.0]
  def change
    create_table :activos do |t|
      t.string :inventario
      t.string :propiedad
      t.string :uso
      t.string :devolucion
      t.string :directrices
      t.string :etiquetado
      t.string :gestion
      t.string :eliminacion
      t.string :soportes


      t.references :empresa, foreign_key: true

      t.timestamps
    end
  end
end
