require 'rails_helper'

RSpec.describe Ideium, type: :model do

  it "A ideia deve ter um nome" do
    ideia = Ideium.new(name: 'Minha primeira ideia')
    ideia.valid?
    expect(ideia.name).not_to include("can't be blank")
  end

  it "Nomes iguais para ideias" do #erro proposital
    ideia = Ideium.new(name: 'A ideia deve ter nomes iuais')
    expect(ideia.name).to eq('A ideia deve ter nomes iguais')
  end

  it "tem uma descricao" #marcando teste como pendente
end
