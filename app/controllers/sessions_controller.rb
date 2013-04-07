class SessionsController < ApplicationController
  before_filter :validate_session, :only => [:destroy]
  
end
