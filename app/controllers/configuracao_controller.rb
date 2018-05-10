class ConfiguracaoController < ApplicationController
    before_action :set_dizimo, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_usuario!  
    # GET /dizimos
    # GET /dizimos.json
    def index
      @usuario = current_usuario 
      @novo = Usuario.new
    end

    def acesso
      @igual   = ::BCrypt::Password.new(current_usuario.encrypted_password) == params[:usuario][:password_confirmation]    
      if @igual
        redirect_to "/configuracao", notice: 'Senha alterada com sucesso'
        current_usuario.update(acesso_params)    
      else
        redirect_to "/configuracao", notice: 'Confirme a sua senha'  
      end
    end

    def adicionar
      @novo = Usuario.new(adicionar_params)
     
        if @novo.save
          redirect_to "/configuracao"
        end
     
    end

    private
     # Never trust parameters from the scary internet, only allow the white list through.
      def acesso_params
        params.require(:usuario).permit(:email, :password)
      end

      def adicionar_params
        params.require(:usuario).permit(:email, :password, :nivel)
      end
  end
  