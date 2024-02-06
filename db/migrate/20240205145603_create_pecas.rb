class CreatePecas < ActiveRecord::Migration[7.1]
  def change
    create_table :pecas do |t|
      t.string :nome
      t.string :id_FornPeca

      t.timestamps
    end
  end
end
