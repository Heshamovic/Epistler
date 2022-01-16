class RecipientsRecipientsListsController < ApplicationController
  def index
  end

  # GET /recipients_lists/1 or /recipients_lists/1.json
  def show
  end

  # GET /recipients_lists/new
  def new
  end

  # GET /recipients_lists/1/edit
  def edit
  end

  # POST /recipients_lists or /recipients_lists.json
  def create
  end

  # PATCH/PUT /recipients_lists/1 or /recipients_lists/1.json
  def update
  end

  # DELETE /recipients_lists/1 or /recipients_lists/1.json
  def destroy
  end

  private

  def recipients_recipients_list_params
    params.require(:recipients_list).permit(:email, :listing_type)
  end
end

