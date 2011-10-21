class ContatoController < ApplicationController
  def index
    render :action => "new"
  end
  
  def new
    @contato = Sitecontact.new
  end
  
  def create
    @contato = Sitecontact.new
    @contato.nome = params[:nome]
    @contato.email = params[:email]
    @contato.telefone = params[:telefone]
    @contato.empresa = params[:empresa]
    @contato.mensagem = params[:mensagem]
    
    if !@contato.save
      @error_nome = "input_error" if @contato.nome.blank?
      @error_email = "input_error" if @contato.email.blank?
      @error_telefone = "input_error" if @contato.telefone.blank?
      @error_mensagem = "textarea_error" if @contato.mensagem.blank? 
      
      render :action => "new"
    else
      UserMailer.contact(@contato).deliver
    end
    
  end
end
