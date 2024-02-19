class Montagem < ApplicationRecord
  has_and_belongs_to_many :livros
  has_and_belongs_to_many :pecas
end
