class MeController < ApplicationController
  def index
    @message = Message.new
    # def create
    #   @message = Message.new
    #   @message.name = params['name']
    #   @message.email = params['email']
    #   @message.message = params['message']

    #   @message.save

    # end
  end

  def new_message
    @message = Message.new(message_params)
    # @message.name = name_params #params['name']
    # @message.email = email_params #params['email']
    # @message.message = message_params#params['message']

    # @message.name = params['message']['name']
    # @message.email = params['message']['email']
    # @message.message = params['message']['message']


    # binding.pry
    @message.tricky_sum = params[:message][:tricky_sum] if params[:message]
    if @message.save
      # redirect_to me_blog_path
      redirect_to me_index_path(anchor: 'contact')
      flash[:alert] = "Nice One. Thanks for sending me a message."
      #send an email to me.
      UserMailer.contact_email(@message).deliver

      return
    end

    redirect_to me_index_path(anchor: 'contact')
    flash[:alert] = "Sorry.. something went wrong. Please try again - or email me directly :)"
  end

  def blog
  end

  def email
  end


  private

  def message_params
    params.require(:message).permit(:name, :email, :message)
  end


end
