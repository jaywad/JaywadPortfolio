class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @message = Contact.new
  end

  def message
    @message = Contact.new(contact_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to :contact, notice: 'Thanks for contacting me. I will get in touch with you shortly👍🏿' }
        BOT.api.send_message(chat_id: Rails.application.secrets[:telegram][:bot][:bot_chat_id],
                             text: "<b>Portfolio Contact Me:</b> \n <b>Name: </b> #{contact_params[:name]} \n <b>Email: </b> #{contact_params[:email]} \n <b>Message: </b> #{contact_params[:message]} ",
                             parse_mode: "HTML"
                            )
      else
        format.html { render :contact, notice: 'Sending message failed!' }
      end
    end
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end

  private
  
  def contact_params
    params.require(:contact).permit(:name, 
                                    :email, 
                                    :message
                                    )
  end
end
