class CreateTeles < ActiveRecord::Migration[6.0]
  def change
    create_table :teles do |t|
      t.string :controles
      t.string :mecanismos
      t.string :segregacion
      t.string :politicas
      t.string :intercambio
      t.string :mensajeria
      t.string :confidencialidad
      t.references :empresa, foreign_key: true
      t.timestamps
    end
  end
end
