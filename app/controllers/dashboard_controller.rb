class DashboardController < ActionController::Base
  def index

  end

  def create
  	p "Paso1 "* 100 
		DashboardMailer.email_something_html("#{params[:email]}", "#{params[:nombre]}", "<p>#{params[:mensaje]}</p>").deliver_now
		p "Paso "* 100 
		redirect_to root_path
	end

end