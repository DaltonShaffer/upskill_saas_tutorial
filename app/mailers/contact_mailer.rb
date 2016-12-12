class ContactMailer < ActionMailer::Base
  default to: 'shaffer.dalton@outlook.com'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Contact Form message')
  end
end