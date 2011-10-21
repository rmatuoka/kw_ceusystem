class UserMailer < ActionMailer::Base
  default :from => "sugestão de emenda  <noreply@betotricoli.com>"
  
  def contact(contact)
    @contato = contact
    mail(:to => "rmatuoka@korewa.com.br",  :subject => "Contato Via Site")
  end
end
