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

  it 'não é válido quando o primeiro nome é nulo '

end
