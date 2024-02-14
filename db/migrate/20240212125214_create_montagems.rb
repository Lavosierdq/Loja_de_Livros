class CreateMontagems < ActiveRecord::Migration[7.1]
  def change
    create_table :montagems do |t|
      t.string :cadastro_montage

      t.timestamps
    end

    create_table :livros_monstagems, id: false do |t|
      t.references :livro, foreign_key: true
      t.references :montagem, foreign_key: true

    end
  end
end
