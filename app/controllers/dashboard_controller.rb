class DashboardController < ActionController::Base
  def index
  	
  end

  def create
		DashboardMailer.email_something_html("#{params[:email]}", "#{params[:nombre]}", "<p>#{params[:mensaje]}</p>").deliver_now
		return redirect_to '/'
	end

end