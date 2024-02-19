class CreatePecas < ActiveRecord::Migration[7.1]
  def change
    create_table :pecas do |t|
      t.string :nome_peca

      t.timestamps
    end

    create_table :montagem_pecas, id: false do |t|
      t.references :montagem, foreign_key: true
      t.references :peca, foreign_key: true

    end
  end
end
