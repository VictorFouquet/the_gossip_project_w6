class UserController < ApplicationController

  def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  end

  def show
  	@user = User.find(params[:id]) 
  end

  def new
    @user = User.new
  end

  def create
    if City.find_by(name: params[:city].titleize) == nil
      @city = City.create(name: params[:city].titleize)
    else 
      @city = City.find_by(name: params[:city].titleize)
    end
    @user = User.new(
      first_name:params[:first_name],
      last_name: params[:last_name],
      description: params[:description],
      email: params[:email],
      age: params[:age].to_i,
      password: params[:password],
      city: @city
      )
      if @user.save
        redirect_to root_path, :alert => "success_user_create"
      else 
        render :new
      end
  end

   

  def edit
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
  end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end
end
