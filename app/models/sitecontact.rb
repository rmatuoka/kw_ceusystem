class Sitecontact < ActiveRecord::Base
  validates_presence_of :nome, :email, :telefone, :mensagem
end
