require 'mailgun'
class HomeController < ApplicationController
  def index
  end
  #email
  def write
    @name = params[:name]
    @email = params[:email]
    @content = params[:content]
    @phone = params[:phone]
    mg_client = Mailgun::Client.new("key-47e99f7436499cd1eca02fb2d76a032c")

    message_params =  {
                   from: @email,
                   to:   'wsyoon@korearental.co.kr',
                   subject: @name,
                   text:    @content
                  }

                  result = mg_client.send_message('sandbox5785dd6d827044c6a6914279b3c35f83.mailgun.org', message_params).to_h!

                  message_id = result['id']
                  message = result['message']

            redirect_to "/"
  end


  def about
  end
  def product
    @posts = Post.all
  end

  def board

      post = Post.new
      post.title = params[:title]
      post.content = params[:content]
      post.save

      redirect_to "/home/product#chat-section"
  end
  def reply_board

      reply = Reply.new
      reply.content = params[:content]
      reply.post_id = params[:id_of_post]
      reply.save

      redirect_to "/home/product#chat-section"
  end

  def index_vn
  end
  def about_vn
  end
  def product_vn
  end


end
