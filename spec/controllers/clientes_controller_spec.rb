require 'spec_helper'

describe ClientesController do
  it "deveria adicionar um cliente" do
    cliente = mock_model(Cliente)
    cliente.should_receive(:nome)
    
  end
end
