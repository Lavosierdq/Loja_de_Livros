class Livro < ApplicationRecord
  belongs_to :autor
  has_and_belongs_to_many :montagems
end
