require 'mailgun'
class HomeController < ApplicationController
  def index
  end
  #email
  def write
    @name = params[:name]
    @email = params[:email]
    @content = params[:content]
    mg_client = Mailgun::Client.new("key-ac89645311d8534bb27750e824ad715a")

    message_params =  {
                   from: @email,
                   to:   'duanea0606@gmail.com',
                   subject: @name,
                   text:    @content
                  }

                  result = mg_client.send_message('sandbox165c26fd72294c21b95418c845d11557.mailgun.org', message_params).to_h!

                  message_id = result['id']
                  message = result['message']

            redirect_to "/"
  end

  def about
  end
  def pc
  end
  def car
  end
  def tmi
  end
  def copy
  end
  def forklift
  end
  def manlift
  end
  def printer
  end

end
