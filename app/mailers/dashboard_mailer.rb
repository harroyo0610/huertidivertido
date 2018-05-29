class DashboardMailer < ActionMailer::Base
	#default from: "huarci@gmail.com"

  def email_something_html(somefrom, somesubject, somebody)
    mail to: somefrom, subject: somesubject, body: somebody, content_type: "text/html"
  end
end