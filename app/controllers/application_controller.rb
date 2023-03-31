class ApplicationController < ActionController::Base

     before_action :configure_permitted_parameters, if: :devise_controller?
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:sign_up, keys: [:roll])
    end

   def after_sign_in_pa
    
  
   end
   def after_sign_in_path_for(resource)
    
  products_path
    
end

end
