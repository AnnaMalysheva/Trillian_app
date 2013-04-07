class VcardsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
  #before_filter :validate_session 
  
  respond_to :html, :json
  
  def show
    vcards = User.find(params[:user_id]).vcards
    respond_with(vcards)
  end
end
