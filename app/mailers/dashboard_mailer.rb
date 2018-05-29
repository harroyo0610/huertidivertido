class DashboardMailer < ActionMailer::Base
	#default to: "huarci@gmail.com"

  def email_something_html(somefrom, somesubject, somebody)
    mail(from: somefrom,
    			to: "huarci@gmail.com",
         subject: somesubject,
         body: somebody,
         content_type: "text/html")
  end
end