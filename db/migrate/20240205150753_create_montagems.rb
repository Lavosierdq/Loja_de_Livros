class CreateMontagems < ActiveRecord::Migration[7.1]
  def change
    create_table :montagems do |t|
      t.string :cadastro_Montagem
      t.string :id_livro

      t.timestamps
    end
  end
end
