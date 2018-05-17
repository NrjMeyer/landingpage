# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
	def contact
		ContactMailer.contact('adress', 'name')
	end

	def fromtweet
		ContactMailer.fromtweet('adress', 'name')
	end
end
