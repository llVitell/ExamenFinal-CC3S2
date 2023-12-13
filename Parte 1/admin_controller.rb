class AdminController < ApplicationController
    before_filter :check_admin
    def check_admin
        if @user.admin?
            redirect_to :access_restringed
            flash[:warning] = "Este usuario no tiene acceso"
        end
    end
end