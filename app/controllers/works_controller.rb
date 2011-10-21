class WorksController < ApplicationController
  def index
    @work = Work.new
    render :action => "new"
  end
  
  def new
    @work = Work.new
  end

  def create
     @work = Work.create(params[:work])
     
      if !@work.save
        @error_nome = "input_error" if @work.nome.blank?
        @error_email = "input_error" if @work.email.blank?
        @error_telefone = "input_error" if @work.telefone.blank?
        @error_mensagem = "textarea_error" if @work.mensagem.blank?

        render :action => "new"
      else
        UserMailer.works(@work).deliver
      end
     
  end
end
