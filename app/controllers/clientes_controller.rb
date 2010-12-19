class ClientesController < ApplicationController

    def new
      @cliente = Cliente.new
    end
  
    def create
      @cliente= Cliente.new(params[:cliente])
      @telefone= Telefone.new(params[:telefone])
      @telefone.numero.split(',').each do |t|
        @tt= Telefone.new
        @tt.numero= t
        @cliente.telefones << @tt
      end
      if @cliente.save
        flash[:notice]= 'Criado com sucesso'
        redirect_to :action => 'index'
      else
        render :action => 'new'
      end
    end
  
    def index
      @clientes = Cliente.all
    end
  
    def destroy
      @cliente= Cliente.find params[:id]
      if Cliente.destroy(@cliente)
        Telefone.destroy @cliente.telefones
        flash[:notice]= 'Excluido com sucesso'
      else
        flash[:notice]= 'Erro'
      end
      redirect_to :action => 'index'
    end
    
    def update
      @cliente= Cliente.find(params[:id])
      
      if @cliente.update_attributes(params[:cliente])
       flash[:notice]= 'Editado com sucesso'
       redirect_to :action => 'index'
      else
        render :action => 'edit'
      end
       
    end
    
    def edit
      @cliente= Cliente.find(params[:id])
    end
    
  
    def show
      @cliente= Cliente.find(params[:id])
    end

end
