class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
      before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(
            :first_name, 
            :last_name, 
            :user_name, 
            :email, 
            :encrypted_password,
            :password, 
            :current_password,
            :date_of_birth,
            :location,
            :its_female,
            :avatar,
            :backgroundimg,
            :tag_list,) }

 devise_parameter_sanitizer.for(:account_update) { |u| u.permit(
            :first_name, 
            :last_name, 
            :user_name, 
            :email, 
            :encrypted_password,
            :password, 
            :current_password,
            :date_of_birth,
            :location,
            :its_female,
            :bio,
            :bg_url, 
            :avatar,
            :admin,
            :backgroundimg,
            :tag_list,) }


        end
end
