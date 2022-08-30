class ApplicationController < ActionController::Base
   
  
    before_action :fetch_user
    def fetch_user

        if session[:user_id].present?
            @current_user = User.find_by id:session[:user_id]
        end

        unless @current_user.present?
            session[:user_id] = nil
        end
    end

    def check_if_logged_in

        unless @current_user.present?
            flash[:error] = 'You must be logged in to perform that action'
            redirect_to login_path
        end
    end
   
    # before_action :site_search

    # def site_search
    #   @query = Post.ransack(params[:q])
    #   @query_search = @query.result(distinct: true)
    # end

end
