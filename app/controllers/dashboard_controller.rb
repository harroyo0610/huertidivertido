class DashboardController < ActionController::Base
  def index
  	p "Hola" * 50
  end

  def create
		DashboardMailer.email_something_html("#{params[:email]}", "#{params[:nombre]}", "<p>#{params[:mensaje]}</p>").deliver_now
		p "Paso "* 100 
		redirect_to dashboard_index_path
	end

end