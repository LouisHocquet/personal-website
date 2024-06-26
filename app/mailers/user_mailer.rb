class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @user = params[:user] # Instance variable => available in view
    mail(to: @user.email, subject: "Compte admin créé 👌")
    # This will render a view in `app/views/user_mailer`!
  end

  def contact(contact)
    @contact = contact
    mail(
      to: "hello@louishocquet.com",
      subject: "Nouveau contact 🚀"
      )
  end
end
