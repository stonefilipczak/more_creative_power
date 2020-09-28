class RequestMailer < ApplicationMailer
    default from: 'notifications@example.com'
 
    def request_claimed
      @user = params[:user]
      @claimed_by = params[:claimed_by]
      @reply = params[:reply]
      mail(to: @user.email, subject: 'Your Photo Request Has Been Claimed')
    end
end
