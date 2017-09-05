class SessionsController < Devise::SessionsController

  after_action :prepare_intercom_shutdown, only: [:destroy]

  # Your logic here

  protected
  def prepare_intercom_shutdown
    IntercomRails::ShutdownHelper.prepare_intercom_shutdown(session)
  end
end