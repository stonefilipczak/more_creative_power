class RequestMailer < ApplicationMailer
    default from: 'notifications@example.com'
 
    def request_claimed
      @user = params[:user]
      @claimed_by = params[:claimed_by]
      @reply = params[:reply]
      mail(to: @user.email, subject: 'Your Photo Request Has Been Claimed')
    end

    def request_made
      @user = params[:user]
      @schedule = params[:schedule]
      @contact = params[:contact]
      @photographers = User.where("is_photographer = true")
      @photo_emails = []
      @photographers.each do |p|
        @photo_emails.push(p.email)
      end  
      mail(to: @photo_emails, subject: 'New Photo Request')
    end 
    
    
end
