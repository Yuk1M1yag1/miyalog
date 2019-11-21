# frozen_string_literal: true

class UsersController < ApplicationController
  def create
    @user = User.new(params[:user].permit(:name))
    if verify_recaptcha(model: @user) && @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
end
