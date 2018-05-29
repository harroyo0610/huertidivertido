class DashboardController < ActionController::Base

  def index

  end

  def create
  	p "Paso1 "* 100 
  	p params[:person]

		DashboardMailer.email_something_html("#{params[:person][:email]}",  "#{params[:person][:nombre]}", "#{params[:person][:mensaje]}").deliver_now
		# sp = SparkPost::Client.new() # api key was set in ENV through ENV['SPARKPOST_API_KEY']
		# response = sp.transmission.send_message('humberto-_-lzc@hotmail.com', 'huarci@gmail.com', 'huarci@gmail.com', '<h1>HTML message</h1>')
		# puts response
		p "Paso "* 100 
		redirect_to root_path
	end

end