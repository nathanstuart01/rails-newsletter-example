class NewsletterMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.weekly.subject
  #
  def weekly
    @greeting = "Hi"

    mail to: args[:emails], subject: args[:subject]
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.monthly.subject
  #
  def monthly
    @greeting = "Hi"

    mail to: args[:emails], subject: args[:subject]
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.yearly.subject
  #
  def yearly
    @greeting = "Hi"

    mail to: args[:emails], subject: args[:subject]
  end
end
