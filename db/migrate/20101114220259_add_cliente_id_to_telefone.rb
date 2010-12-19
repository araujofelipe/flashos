class AddClienteIdToTelefone < ActiveRecord::Migration
  def self.up
    add_column :telefones, :cliente_id, :integer
  end

  def self.down
    remove_column :telefones, :cliente_id
  end
end
