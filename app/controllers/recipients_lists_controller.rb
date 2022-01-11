class RecipientsListsController < ApplicationController
  before_action :set_recipients_list, only: %i[ show edit update destroy ]

  # GET /recipients_lists or /recipients_lists.json
  def index
    @recipients_lists = RecipientsList.all
  end

  # GET /recipients_lists/1 or /recipients_lists/1.json
  def show
  end

  # GET /recipients_lists/new
  def new
    @recipients_list = RecipientsList.new
  end

  # GET /recipients_lists/1/edit
  def edit
  end

  # POST /recipients_lists or /recipients_lists.json
  def create
    @recipients_list = RecipientsList.new(recipients_list_params)

    respond_to do |format|
      if @recipients_list.save
        format.html { redirect_to recipients_list_url(@recipients_list), notice: "Recipients list was successfully created." }
        format.json { render :show, status: :created, location: @recipients_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipients_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipients_lists/1 or /recipients_lists/1.json
  def update
    respond_to do |format|
      if @recipients_list.update(recipients_list_params)
        format.html { redirect_to recipients_list_url(@recipients_list), notice: "Recipients list was successfully updated." }
        format.json { render :show, status: :ok, location: @recipients_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipients_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipients_lists/1 or /recipients_lists/1.json
  def destroy
    @recipients_list.destroy

    respond_to do |format|
      format.html { redirect_to recipients_lists_url, notice: "Recipients list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipients_list
      @recipients_list = RecipientsList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipients_list_params
      params.require(:recipients_list).permit(:name, :user_id)
    end
end
