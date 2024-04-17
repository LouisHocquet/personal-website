class Contact < ApplicationRecord
  validates :email,
  :presence => :true,
    :format => {
      :with => /\S+@\S+\.\S+/i,
      :message => "Votre adresse email doit être valide"
    }
  validates :message, :presence => :true
end
