class DashboardController < ApplicationController
  def index
    @accounts = current_user.accounts
    @account = current_user.accounts.first
    @assignments = current_user.assignments
    @all_assigns = @assignments
  end

  # def account
  #   @user = current_user
  #   @accounts = @user.accounts.build
  # end

  # def create_account
  #   respond_to do |format|
  #     if @user.update(user_params)
  #       format.html { redirect_to @user, notice: 'User was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @user }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
end
