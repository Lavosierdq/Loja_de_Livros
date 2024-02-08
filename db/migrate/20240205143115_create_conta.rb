class CreateConta < ActiveRecord::Migration[7.1]
  def change
    create_table :conta do |t|
      t.string :num_conta
      t.string :digito_verificador
      t.string :id_forn
      t.references :forncedor,foreign_key:true

      t.timestamps
    end
  end
end
