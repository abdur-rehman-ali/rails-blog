class CrudNotificationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.crud_notification_mailer.post_created.subject
  #
  def post_created
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
