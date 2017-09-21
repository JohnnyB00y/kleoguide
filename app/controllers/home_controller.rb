class HomeController < ApplicationController
    after_action :intercom_shutdown, only: [:index]
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  
    def index
        render :layout => false
    end
    
    def pricing
      render :layout => false
    end
    
      protected
  def intercom_shutdown
    IntercomRails::ShutdownHelper.intercom_shutdown(session, cookies)
  end
end
