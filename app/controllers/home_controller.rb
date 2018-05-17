class HomeController < ApplicationController
  def index
    @contact = Contact.new
    
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    ContactMailer.contact(@contact.email, @contact.name).deliver_now
    redirect_to home_path
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
