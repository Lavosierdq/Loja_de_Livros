class DropLivros < ActiveRecord::Migration[7.1]
  def change
        drop_table :livros
  end
end
