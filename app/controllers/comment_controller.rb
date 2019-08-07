class CommentController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(content: params[:comment], 
			user: User.all.sample,
			gossip: Gossip.find(params[:gossip_id]), 
			date: Date.today.strftime("Créé le %d/%m/%Y")
  	 )
		puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
		puts @comment.content
		puts @comment.user
		puts @comment.gossip_id
		puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
		if @comment.save
			redirect_to root_path, :alert => "comment_success"
		end
	end

end