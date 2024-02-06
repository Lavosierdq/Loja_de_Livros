class CreateFornecedors < ActiveRecord::Migration[7.1]
  def change
    create_table :fornecedors do |t|
      t.string :nome_fornecedor
      t.string :id_conta
      t.string :CNPJ

      t.timestamps
    end
  end
end
