class SessionsController < ApplicationController

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to dossiers_url, :notice => "Connexion réussie"
    else
      flash.now[:alert] = "identifiant ou mot de passe non reconnu"
      render :action => 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Vous êtes maintenant déconnecté."
  end
end
