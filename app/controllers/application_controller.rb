class ApplicationController < ActionController::Base
  include Clearance::Controller
    def not_found
        render :file => "#{RAILS_ROOT}/public/404.html",  :status => 404
      end
end
