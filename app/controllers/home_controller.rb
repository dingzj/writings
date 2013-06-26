class HomeController < ApplicationController
  layout 'dashboard'

  def index
    if logined?
      redirect_to dashboard_root_path(current_user)
    end
  end
end