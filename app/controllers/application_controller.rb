class ApplicationController < ActionController::Base
  @locations =Location.all
end
