class NewsletterController < ApplicationController
  def new
  end

  def create
    #NewsletterJob.set(wait_until: Date.tomorrow.noon).perform_later({
    #add in the stuff below like emails, subject, newsletter
    #})
    NewsletterJob.perform_later({
      emails: params[:emails],
      subject: params[:subject],
      newsletter: params[:newsletter],
      })

    flash[:success] = 'Newsletter has been sent'
    redirect_to :root
  end

end
