class RemoveColumnClienteFromTelefones < ActiveRecord::Migration
  def self.up
     remove_column :telefones, :cliente
  end

  def self.down
     add_column :telefones, :cliente, :integer
  end
end
