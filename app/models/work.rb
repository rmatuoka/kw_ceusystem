class Work < ActiveRecord::Base
  validates_presence_of :nome, :email, :telefone, :mensagem
  
  has_attached_file :curriculum,
      :url => "/uploads/:attachment/:id/:basename_:style.:extension",
      :path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
end
