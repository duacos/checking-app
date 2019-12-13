class CreatePoliticas < ActiveRecord::Migration[6.0]
  def change
    create_table :politicas do |t|
      t.string :seguridad_info
      t.string :revision_string
      t.integer :empresa_id

      t.references :empresa, foreign_key: true

      t.timestamps
    end
  end
end
