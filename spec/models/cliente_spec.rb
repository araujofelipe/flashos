require 'spec_helper'

describe Cliente do
  before(:each) do
    @cliente = Cliente.new
    @cliente.nome= 'Felipe'
    @cliente.cpf= '025.695.871-84'
    @cliente.email= 'felipe@felipe.com'
  end
  
  it "should be new and unique" do
   @cliente.garante_que_e_novo_e_unico
   @cliente.errors.should be_empty
  end
  it "should have nome" do
    @cliente.nome.should_not be_nil
  end
  it "should have cpf" do
    @cliente.cpf.should_not be_nil
  end
  it "should have email" do
    @cliente.email.should_not be_nil
  end
end
