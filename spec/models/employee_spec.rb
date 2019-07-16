require 'rails_helper'

RSpec.describe Employee, type: :model do

  it 'criação padrão de usuário' do
    employee = Employee.new(
      name: 'Gabriel',
      years: 21
    )
    expect(employee).to be_valid
  end

  it 'nome do usuário é obrigatório' do
    employee = Employee.create( name: nil)
    employee.valid?

    expect(employee.errors[:name]).not_to include( "can't be blank" )
  end

  it 'criação de usuário sem idade' do
    employee = Employee.create(
      name: 'Gabriel',
      years: nil
    )
    expect(employee).to be_valid
  end

  it 'nome do usuário não deve ser maior que 100 caracteres' do
    employee = Employee.new(
      name: 'aaaaaaaaasssssssssssssaaaaaaaaasssssssssssssaaaaaaaaasssssssssssssaaaaaaaaasssssssssssssaaaaaaaaasssssssssssssssaaaaaaaaasssssssssssss',
      years: nil
    )

    if employee.name.size >= 100
      expect(employee).to be_invalid
    else
      expect(employee).to be_valid
    end
  end
end
