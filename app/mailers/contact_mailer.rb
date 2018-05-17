class ContactMailer < ApplicationMailer

    def contact(adress, name)
    	@adress = adress
    	@name = name
    	mail(to: @adress, subject: 'The Hacking Project')
    end

    def fromtweet(adress, name)
    	@adress = adress
    	@name = name
    	mail(to: @adress, subject: 'The Hacking Project')
    end

end
