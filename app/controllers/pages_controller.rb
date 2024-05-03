class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home wattivet_detail]
  def home
    # @contact = Contact.new
    # if params[:contact_info]
    #   @contact.name = params[:contact_info][:name] if params[:contact_info][:name]
    #   @contact.email = params[:contact_info][:email] if params[:contact_info][:email]
    #   @contact.message = params[:contact_info][:message] if params[:contact_info][:message]
    #   @email_errors =  params[:contact_info][:errors][:email]
    #   @message_errors =  params[:contact_info][:errors][:message]
    # end
    @projects = Project.all.order(:id)
    @expertises = Expertise.all
  end

  def admin
    @tool = Tool.new
    @tools = Tool.all
  end

  def wattivet_detail
    @project_title = "Wattivet"
    @project_url = "https://www.wattivet.fr"
  end
end
