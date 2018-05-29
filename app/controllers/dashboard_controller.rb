class DashboardController < ActionController::Base
  def index

  end

  def create
  	p "Paso1 "* 100 
  	p params
		DashboardMailer.email_something_html(params[:person][:email],  params[:person][:nombre], params[:person][:mensaje]).deliver_now
		p "Paso "* 100 
		redirect_to root_path
	end

end