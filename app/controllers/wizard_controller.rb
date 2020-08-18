class WizardController < ApplicationController
    def welcome
        @artworks = ArtWork.where(:user => current_user)
        if current_user.present? 
            if current_user.is_photographer? 
                photographer
            else @artworks.present?
                redirect_to art_works_path
            end   
        end
    end
    
    def photographer
        @art_works = ArtWork.all()
        @photo_requests = PhotoRequest.all()
        @claimed = PhotoRequest.where(:claimed_by => current_user)
        render :photographer
    end
end    