class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :wattivet_detail]
  def home
  end

  def admin
  end

  def wattivet_detail
    @project_title = "Wattivet"
    @project_url = "https://www.wattivet.fr"
    @project_description = "
      Wattivet est une clinique vétérinaire sur Wattignies, spécialisée dans les soins aux chiens et chats.
      L'équipe souhaitait développer sa notoriété sur internet, nous avons donc conçu un site internet ensemble pour
      partager aux clients :
    "

  end
end
