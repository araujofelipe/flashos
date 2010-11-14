class Cliente < ActiveRecord::Base
  
  validate :garante_que_e_novo_e_unico
  
  def garante_que_e_novo_e_unico
    errors.add_to_base("Este cliente ja existe") unless Cliente.find(:all,:conditions => ["cpf = ?", self.cpf]).empty?
  end
  
end
