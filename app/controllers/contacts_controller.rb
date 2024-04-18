class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      # UserMailer.contact(@contact).deliver_now
      flash.alert = "Merci pour votre message, futur partenaire. Je reviens vers vous très rapidement !"
      redirect_to root_path
    else
      # redirect_to("https://www.louishocquet.com/#contact", allow_other_host: true)
      redirect_to("https://www.louishocquet.com/#contact", allow_other_host: true, contact_info: {name: @contact.name, email: @contact.email, message: @contact.message, errors: @contact.errors.messages})
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
