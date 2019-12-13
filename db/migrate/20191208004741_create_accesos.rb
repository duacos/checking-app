class CreateAccesos < ActiveRecord::Migration[6.0]
  def change
    create_table :accesos do |t|
      t.string :politicaControl
      t.string :controlAcceso
      t.string :gestionAltasBajas
      t.string :gestionDerechosUsuarios
      t.string :gestionDerechosEspeciales
      t.string :revisionDerechos
      t.string :retirada
      t.string :restriccion
      t.string :procedimientos
      t.string :gestionPassword
      t.string :uso
      t.string :accesoCodigo
      t.references :empresa, foreign_key: true
      t.timestamps
    end
  end
end
