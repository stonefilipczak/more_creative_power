class WizardController < ApplicationController
    def welcome
        @artworks = ArtWork.where(:user => current_user)
        if @artworks.present?
            redirect_to art_works_path
        end    
    end    
end    