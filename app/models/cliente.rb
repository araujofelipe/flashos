class Cliente < ActiveRecord::Base
  
  #validate :garante_que_e_novo_e_unico
  validates_uniqueness_of :cpf
  validates_presence_of :nome, :cpf , :message => "Campo obrigatorio"
  
  has_many :telefones
  
  def garante_que_e_novo_e_unico
    errors.add(:base,"Este cliente ja existe") unless Cliente.find(:all,:conditions => ["cpf = ?", self.cpf]).empty?
  end
  
end
