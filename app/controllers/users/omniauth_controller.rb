class Users::OmniauthController < Devise::OmniauthCallbacksController
    def Google
        @user = User.from_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect @user
    end
end