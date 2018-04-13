class ClassifiedMailer < ApplicationMailer

	  # Subject can be set in your I18n file at config/locales/en.yml
	  # with the following lookup:
	  #
	  #   en.classified_mailer.contact.subject
	  #
	def contact
	@subject
	= 'Railslist: A potential buyer has contacted you'
	@recipients = classified.email
	@from
	= 'no-reply@yourdomain.com'
	@sent_on
	= sent_at
	@body["title"] = classified.title
	@body["email"] = buyer[:email]
	@body["message"] = buyer[:message]
	end

end
