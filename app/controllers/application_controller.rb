class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    admin_path
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
  before_action :authenticate_user!
end
