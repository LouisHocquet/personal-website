class ApplicationMailer < ActionMailer::Base
  # default from: "hello@louishocquet.com"
  default from: "mailtrap@demomailtrap.com"
  layout "mailer"
end
