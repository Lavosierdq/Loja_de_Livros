class CreateFornPecas < ActiveRecord::Migration[7.1]
  def change
    create_table :forn_pecas do |t|
      t.string :id_peca
      t.string :id_forn

      t.timestamps
    end
  end
end
