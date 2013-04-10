class ContactsController < ApplicationController
  def index
    render json: {contacts: Contact.all}
  end
  def show
    render json: {contact: Contact.find(params[:id])}
  end
  def update
    contact = Contact.find(params[:id])
    contact.update_attributes(params[:contact])
    contact.dob = params[:contact][:dob].to_date
    render json: {contact: contact}
  end
  def create
    contact = Contact.new(params[:contact])
    contact.dob = params[:contact][:dob].to_date
    contact.save
    render json: {contact: contact}
  end
  def destroy
    contact = Contact.find(params[:id])
    contact.delete
    render json: contact, status: 204
  end
end