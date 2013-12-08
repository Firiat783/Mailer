class PeopleController < ApplicationController

  def index

    @users=User.all

    if params[:gender] == 'male'
      @users = @users.where(gender: 'male')
    end

    if params[:gender] == 'female'
      @users = @users.where(gender: 'female')
    end

  end
end
