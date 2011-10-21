class UserMailer < ActionMailer::Base
  default :from => "Desenvolvimento  <rmatuoka@korewa.com.br>"
  
  def contact(contact)
    @contato = contact
    mail(:to => "rmatuoka@korewa.com.br",  :subject => "Contato Via Site")
  end
  
  def works(work)
      @work = work
      attachments[@work.curriculum_file_name] = File.read(@work.curriculum.path)
      mail(:to => "rmatuoka@korewa.com.br",:bcc => "rmatuoka@korewa.com.br", :subject => "Ceu System - Curriculo via Site")
      #mail(:to => "cnascimento@korewa.com.br",:bcc => "cnascimento@korewa.com.br", :subject => "Wellnes - Curriculo via Site")
  end
  
end
