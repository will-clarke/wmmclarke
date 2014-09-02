class MessageController < ApplicationController
	def new
		@message = Message.new
		redirect_to me_index_path
	end
	# def create
	# 	@message = Message.new
	# 	@message.name = params['name']
	# 	@message.email = params['email']
	# 	@message.message = params['message']

	# 	@message.save
		
	# end
end
