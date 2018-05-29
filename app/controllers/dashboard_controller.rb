class DashboardController < ActionController::Base
  def index

  end

  def create
  	p "Paso1 "* 100 
  	p params
		DashboardMailer.email_something_html(params[:email],  params[:nombre], params[:mensaje]).deliver_now
		p "Paso "* 100 
		redirect_to root_path
	end

end