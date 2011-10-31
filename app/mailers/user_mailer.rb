class UserMailer < ActionMailer::Base
  default :from => "Ceu System  <no-reply@ceusystem.com.br>"
  
  def contact(contact)
    @contato = contact
    mail(:to => "douglas@ceusystem.com.br",  :subject => "Contato Via Site")
  end
  
  def works(work)
      @work = work
      attachments[@work.curriculum_file_name] = File.read(@work.curriculum.path)
      mail(:to => "rh@ceusystem.com.br", :subject => "Ceu System - Curriculo via Site")
      #mail(:to => "cnascimento@korewa.com.br",:bcc => "cnascimento@korewa.com.br", :subject => "Wellnes - Curriculo via Site")
  end
  
end
