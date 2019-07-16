require 'rails_helper'

describe Product do

  it 'nome não pode ser nulo' do
    product = Product.new(
                name: nil,
                last_name: 'Vargas',
                cpf: '41689756312885',
                email: 'gabriel@outlook.com.br',
                nick_name: 'Toneeeeeeee'
              )
    product.valid?
    expect(product.errors[:name]).not_to include("can't be blank")
  end

  it 'cpf não pode ser nulo' do
    product = Product.new(cpf: nil)
    product.valid?
    expect(product.errors[:cpf]).not_to include("can't be blank")
  end

  it 'email não pode ser nulo' do
    product = Product.new(email: nil)
    product.valid?
    expect(product.errors[:email]).not_to include("can't be blank")
  end

  it 'campos obrigatórios' do
    product = Product.new(name: nil, cpf: nil, email: nil )
    product.valid?
    expect(product).to be_invalid
  end

  it 'nickname deve ter letras maiusculas'

end
