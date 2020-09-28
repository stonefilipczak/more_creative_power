class PhotoRequestsController < InheritedResources::Base

  before_action :set_photo_request, only: [:show, :edit, :update, :destroy]

  def edit
  end


  def create
    @photo_request = PhotoRequest.new(photo_request_params)
    @photo_request.user = current_user


    respond_to do |format|
      if @photo_request.save
        format.html { redirect_to art_works_url notice: 'Photo request was succesfully created' }
      else
        format.html { render :new }
        format.json { render json: @photo_request.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

    if current_user.is_photographer?
      @photo_request.claimed_by = current_user
      @photo_request.claimed_at = DateTime.now
      RequestMailer.with(user: @photo_request.user, claimed_by: @photo_request.claimed_by, reply: @photo_request.reply).request_claimed.deliver_later
    end

    respond_to do |format|
      if @photo_request.update(photo_request_params)
        format.html { redirect_to root_path notice: 'Photo request was succesfully updated' }
       
      else
        format.html { render :edit }
        format.json { render json: @photo_request.errors, status: :unprocessable_entity }
      end
    end
  end


  private

    def set_photo_request
      @photo_request = PhotoRequest.find(params[:id])
    end

    def photo_request_params
      params.require(:photo_request).permit(:schedule, :contact, :status, :reply, :claimed_at, :claimed_by)
    end

end
