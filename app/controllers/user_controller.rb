class UserController < ApplicationController
  def user_add
    @users=User.all
  end
end
