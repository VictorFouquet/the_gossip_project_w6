class GossipController < ApplicationController

  def index
    @gossips = Gossip.all
    @gossips = @gossips.sort_by{|gossip| gossip[:date]}
    @gossips = @gossips.reverse
  end

  def show
  	@gossip = Gossip.find(params[:id])
    @comments = @gossip.comments
    @comments = @comments.sort_by{|comment| comment[:date]}
    @comments = @comments.reverse
  end

  def new
    @gossip = Gossip.new
  end

 def create
   @gossip = Gossip.new(title:params[:title], content:params[:content], date: Date.today.strftime("Créé le %d/%m/%Y"))
   @gossip.user = User.find_by(first_name:"Ano")    
   if @gossip.save
    redirect_to({ :action=>'index' }, :alert => "success")
   else 
    render :new
  end
 end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.title = params[:title]
    @gossip.content = params[:content]
    if @gossip.save
      redirect_to({ :action=>'index' }, :alert => "success")
    else 
      render :edit
    end
  end

  def destroy
    Gossip.find(params[:id]).destroy
    redirect_to({ :action=>'index' }, :alert => "destroy")
  end
end
