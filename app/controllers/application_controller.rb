class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    admin_path
  end
  before_action :authenticate_user!
end
