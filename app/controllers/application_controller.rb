class ApplicationController < ActionController::Base
  # 検証用
  skip_before_action :verify_authenticity_token
end
