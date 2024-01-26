class Autor < ApplicationRecord
has_many :livros
  accepts_nested_attributes_for :livros
end
