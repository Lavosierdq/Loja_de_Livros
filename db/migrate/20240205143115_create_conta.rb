class CreateConta < ActiveRecord::Migration[7.1]
  def change
    create_table :conta do |t|
      t.string :num_conta
      t.string :digito_verificador
      t.string :id_forn

      t.timestamps
    end
  end
end
