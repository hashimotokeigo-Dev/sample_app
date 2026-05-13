# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation" # rubocop:disable Rails/I18nLocaleTexts
  end

  def password_reset
    @greeting = "Hi"
    mail to: "to@example.org"
  end
end
