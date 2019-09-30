# frozen_string_literal: true

class UsersController < ApplicationController
  @user = User.new(params[:user].permit(:name))
  
end