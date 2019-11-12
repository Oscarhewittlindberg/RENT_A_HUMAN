class ApplicationsController < ActionController::Base
  before_action :authenticate_user!
end
