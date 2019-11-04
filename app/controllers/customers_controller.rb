class CustomersController < ApplicationController
  def getAllRecords
    @customers = Customer.select("id, guid, name, email").all
    render :json => @customers 
  end

  def getSingleRecord
    @customer = Customer.find_by(guid: params[:id])
    render :json => @customer
  end

  def searchRecords
    @filtered = Customer.select do |customer|
      searched = params[:terms]
      customer.guid.include?(searched) || customer.name.downcase.include?(searched) || customer.email.include?(searched)
    end

    render :json => @filtered
  end
end
