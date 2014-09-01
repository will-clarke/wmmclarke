class MessageController < ApplicationController
	def new
		@message = Message.new
	end
	# def create
	# 	@message = Message.new
	# 	@message.name = params['name']
	# 	@message.email = params['email']
	# 	@message.message = params['message']

	# 	@message.save
		
	# end
end
