class CommentController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.create(content: params[:comment], 
			user: User.all.sample,
			gossip_id: params[:gossip_id], 
			date: Date.today.strftime("Créé le %d/%m/%Y")
  	 )
		puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
		puts @comment.content
		puts @comment.user_id
		puts @comment.gossip_id
		puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
		if @comment.save
			puts "Ok"
		end
	end

end