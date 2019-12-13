class CreateOperativas < ActiveRecord::Migration[6.0]
  def change
    create_table :operativas do |t|
      t.string :codigoMalicioso
      t.string :copiaSeguridad
      t.references :empresa, foreign_key: true
      t.timestamps
    end
  end
end
