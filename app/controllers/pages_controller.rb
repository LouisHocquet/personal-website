class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :wattivet_detail]
  def home
  end

  def admin
  end

  def wattivet_detail
    @project_title = "Wattivet"
    @project_url = "https://www.wattivet.fr"
  end
end
