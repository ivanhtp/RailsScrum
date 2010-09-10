class UsersController < ApplicationController
  layout 'login'

  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  

  # render new.rhtml
  def new
    @user = User.new
  end
 
  def create
    logout_keeping_session!
    @user = User.new(params[:user])
    success = @user && @user.save
    if success && @user.errors.empty?
            # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      self.current_user = @user # !! now logged in
      redirect_back_or_default('/')
      flash[:notice] = "<img src=/images/flashes/loginAdd.png >Obrigado por se cadastrar no Rum! Estamos enviando-lhe um e-mail de ativação."
    else
      flash[:error]  = "<img src=/images/flashes/loginFail.png >Não conseguimos configurar sua conta, desculpe.  Por favor tente novamente ou contate o administrador (link acima)."
      render :action => 'new'
    end
  end
end
