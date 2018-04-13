# Preview all emails at http://localhost:3000/rails/mailers/classified_mailer
class ClassifiedMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/classified_mailer/contact
  def contact
    ClassifiedMailer.contact
  end

end
