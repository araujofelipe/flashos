class ClientesController < ApplicationController

  def new
  end
  
  def create
    
     @cliente = Cliente.new(params[:cliente])
     if @cliente.save
      flash[:notice]= 'Criado com sucesso'
     else
      flash[:notice]= 'Erro!'
     end
     redirect_to :action => 'new'
  
  end
  
  def index
    @clientes = Cliente.all
  end
  
 def destroy
   if Cliente.destroy(params[:id])
    flash[:notice]= 'Excluido com sucesso'
  else
    flash[:notice]= 'Erro'
  end
   redirect_to :action => 'index'
 end
  
  def show
    @cliente = Cliente.find_by_id(params[:id])
  end

end
