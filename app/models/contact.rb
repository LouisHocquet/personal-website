class Contact < ApplicationRecord
  after_create :send_contact_email

  validates :name, :presence => { message: "Ne peut pas être vide" }
  validates :email,
  :presence => { message: "Ne peut pas être vide" },
    :format => {
      :with => /\S+@\S+\.\S+/i,
      :message => "Votre adresse email doit être valide"
    }
  validates :message, :presence => { message: "Ne peut pas être vide" }

  private

  def send_contact_email
    UserMailer.contact(self).deliver_now
  end
end
