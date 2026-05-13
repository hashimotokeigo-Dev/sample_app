# frozen_string_literal: true

class AccountActivationsController < ApplicationController
  def edit # rubocop:disable Metrics/AbcSize
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      log_in user
      flash[:success] = "Account activated!" # rubocop:disable Rails/I18nLocaleTexts
      redirect_to user
    else
      flash[:danger] = "Invalid activation link" # rubocop:disable Rails/I18nLocaleTexts
      redirect_to root_url
    end
  end
end
