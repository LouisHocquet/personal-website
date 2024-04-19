class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :new]

  def new
    @contact = Contact.new
    if params[:contact_info]
      @contact.name = params[:contact_info][:name] if params[:contact_info][:name]
      @contact.email = params[:contact_info][:email] if params[:contact_info][:email]
      @contact.message = params[:contact_info][:message] if params[:contact_info][:message]
      @name_errors =  params[:contact_info][:errors][:name]
      @email_errors =  params[:contact_info][:errors][:email]
      @message_errors =  params[:contact_info][:errors][:message]
    end
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      # UserMailer.contact(@contact).deliver_now
      flash.alert = "Merci pour votre message, je reviens vers vous très rapidement !"
      redirect_to root_path
    else
      # redirect_to("https://www.louishocquet.com/#contact", allow_other_host: true)
      # redirect_to("https://www.louishocquet.com/#contact", allow_other_host: true, name: @contact.name, email: @contact.email, message: @contact.message, errors: @contact.errors.messages)
      # redirect_to("http://localhost:3000/#contact")
      redirect_to(
        new_contact_path(
          contact_info: {name: @contact.name, email: @contact.email, message: @contact.message, errors: @contact.errors.messages}
        ))

      # redirect_to("http://localhost:3000/", allow_other_host: true, anchor: :contact)
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
