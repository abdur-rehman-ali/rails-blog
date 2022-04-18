class CrudNotificationMailer < ApplicationMailer
  def post_created
    @greeting = "Hi"
    @user = params[:user]

    mail to: "abdur.rehman@devsinc.com" , subject: "Welcome to my site" 
    
  end
end
