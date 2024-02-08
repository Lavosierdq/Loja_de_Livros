class Fornecedor < ApplicationRecord
  has_many :contas
  has_and_belongs_to_many :forn_pecas
end
