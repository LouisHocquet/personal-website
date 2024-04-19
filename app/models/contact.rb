class Contact < ApplicationRecord
  after_create :send_contact_email

  validates :email,
  :presence => :true,
    :format => {
      :with => /\S+@\S+\.\S+/i,
      :message => "Votre adresse email doit être valide"
    }
  validates :message, :presence => :true

  private

  def send_contact_email
    UserMailer.contact(self).deliver_now
  end
end
