class Api::V1::Auth::RegistrationsController < ApplicationController
  # def index
  #   if current_api_v1_user
  #     render json: { is_login: true, data: current_api_v1_user }
  #   else
  #     render json: { is_login: false, message: "ユーザーが存在しません" }
  #   end
  # end

  # def create
  #   @user = User.new(sign_up_params)
  #   if @user.save
  #     render json: { status: 'success', data: @user }
  #   else
  #     render json: { status: 'error', errors: @user.errors.full_messages }
  #   end
  # end

  # def create
  #   user = User.find_by(email: params[:email])
  #   if user && user.valid_password?(params[:password])
  #     sign_in(user)
  #     render json: { status: 'success', message: 'Signed in successfully' }
  #   else
  #     render json: { status: 'error', message: 'Invalid email or password' }
  #   end
  # end

  # private

  # def sign_up_params
  #   params.require(:registration).permit(:email, :password, :password_confirmation)
  # end
end
