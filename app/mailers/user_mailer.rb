class UserMailer < ActionMailer::Base
	default from: ENV['GMAIL_EMAIL']

	def contact_email(message)
		@name = message.name
		@email = message.email
		@message = message.message

	    mail(to: ENV['GMAIL_EMAIL'],
			subject: "WMMClarke: #{@name}")
	        #template_path: 'notifications',
	        #template_name: 'another')

    end
  

end