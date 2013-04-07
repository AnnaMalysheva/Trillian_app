class CompaniesController < ApplicationController
  skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
  #before_filter :validate_session  
  
  respond_to :html, :json
  
  def show
    companies = Company.select("companyattrs").where("name like ?", params[:name]+"%")
    #result = companies.map { |c| JSON.parse(c.companyattrs) if c.companyattrs && c.companyattrs.length >= 2 }  # The if is there in case dialer_json is nil, shouldn't happen but...
    #result.compact! # Remove nils - shouldn't happen
    respond_with(companies)
        
  end
  
  def create
    company_json = params[:company_json]
    Rails.logger.info("#{company_json}")
  end
  
end
