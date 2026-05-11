# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: "hashimoto.keigo@moneyforward.co.jp"
  layout "mailer"
end
