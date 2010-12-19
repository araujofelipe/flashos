class CreateTelefones < ActiveRecord::Migration
  def self.up
    create_table :telefones do |t|
      t.integer :cliente
      t.string :numero

      t.timestamps
    end
  end

  def self.down
    drop_table :telefones
  end
end
