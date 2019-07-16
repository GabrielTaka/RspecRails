require 'rails_helper'
extend ActiveSupport::Concern



describe User do
  it 'é válido quando contém o primeiro nome, último nome e email.' do
    user = User.new(
      firstname: 'Gabriel',
      lastname: 'Vargas',
      email: 'gabriel.vargas01@fatec.sp.gov.br'
    )

    expect(user).to be_valid
  end

  it 'não é válido quando o primeiro nome é nulo ' do
    user = User.new(firstname: nil)
    user.valid?
    expect(user.errors[:firstname]).to include("can't be blank")
  end

  it "é invalido caso já exista um e-mail igual" do
    user = User.create(firstname: 'Gabriel', lastname: 'Takahashi', email: 'gabriel.vargas01@fatec.sp.gov.br')
    user = User.create(firstname: 'Gabriel', lastname: 'vargas', email: 'gabriel.vargas01@fatec.sp.gov.br')

    user.valid?
    expect(user.errors[:email]).not_to include("has already been taken")
  end
end
