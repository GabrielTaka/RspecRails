class Product < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :cpf, presence: true
end
