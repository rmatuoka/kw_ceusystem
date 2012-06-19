class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.subject = "---=== Ceu System Teste de Email ===---"
    message.to = "log@korewa.com.br"
    message.bcc = "log@korewa.com.br"
  end
end