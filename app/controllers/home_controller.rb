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
    mg_client = Mailgun::Client.new("key-f3481f72d0dd510c5af1543033732a1b")

    message_params =  {
                   from: @email,
                   to:   'shjang@korearental.co.kr',
                   subject: @name,
                   text:    @content
                  }

                  result = mg_client.send_message('sandboxf8f8102b92ba414e81315b1e522a853d.mailgun.org', message_params).to_h!

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
