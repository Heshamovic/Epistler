class RecipientsRecipientsListsController < ApplicationController

  def index; end
  # GET /recipients_recipients_lists/new
  def new
    @recipients_list = RecipientsList.find params[:format]

    @recipients_recipients_list = RecipientsRecipientsList.new
  end

  def show; end

  # POST /recipients_recipients_lists or /recipients_recipients_lists.json
  def create
    recipient = Recipient.where(email: recipients_recipients_list_params[:recipient_id])
    unless recipient.length == 1
      respond_to do |format|
        format.html do
          @recipients_recipients_list.errors.add(:recipient,
                                                 :unprocessable_entity,
                                                 message: "#{recipients_recipients_list_params[:recipient_id]} doesn't exist in your recipients, add him/her first before adding to list.")
          redirect_to new_recipients_recipients_list_url format: recipients_recipients_list_params[:recipients_list_id],
                                                         status: :unprocessable_entity
        end
        format.json { render json: recipient.errors, status: :unprocessable_entity }
      end
      return
    end

    params[:recipients_recipients_list][:recipient_id] = recipient.first.id
    @recipients_recipients_list = RecipientsRecipientsList.new(recipients_recipients_list_params)
    respond_to do |format|
      if @recipients_recipients_list.save
        format.html { redirect_to recipients_list_url(@recipients_recipients_list.recipients_list.id), notice: "Recipient was successfully added." }
        format.json { render :show, status: :created, location: @recipients_list }
      else
        format.html { redirect_back(fallback_location: :fallback_location) }
        format.json { render json: @recipients_recipients_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipients_recipients_lists/1 or /recipients_recipients_lists/1.json
  def destroy
    @recipients_recipients_list = RecipientsRecipientsList.find params[:id]
    list = @recipients_recipients_list.recipients_list

    @recipients_recipients_list.destroy
    respond_to do |format|
      format.html { redirect_to recipients_list_url(@recipients_recipients_list.recipients_list.id), notice: "Recipient was successfully removed." }
      format.json { render :show, status: :created, location: list }
    end
  end



  private

  # Only allow a list of trusted parameters through.
  def recipients_recipients_list_params
    params.require(:recipients_recipients_list).permit(:recipients_list_id, :recipient_id, :listing_type)
  end
end
