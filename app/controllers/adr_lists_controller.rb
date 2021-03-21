class AdrListsController < ApplicationController
  before_action :set_adr_list, only: %i[ show edit update destroy ]

  # GET /adr_lists or /adr_lists.json
  def index
    @adr_lists = AdrList.all
  end

  # GET /adr_lists/1 or /adr_lists/1.json
  def show
  end

  # GET /adr_lists/new
  def new
    @adr_list = AdrList.new
  end

  # GET /adr_lists/1/edit
  def edit
  end

  # POST /adr_lists or /adr_lists.json
  def create
    @adr_list = AdrList.new(adr_list_params)

    respond_to do |format|
      if @adr_list.save
        format.html { redirect_to @adr_list, notice: "Adr list was successfully created." }
        format.json { render :show, status: :created, location: @adr_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @adr_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adr_lists/1 or /adr_lists/1.json
  def update
    respond_to do |format|
      if @adr_list.update(adr_list_params)
        format.html { redirect_to @adr_list, notice: "Adr list was successfully updated." }
        format.json { render :show, status: :ok, location: @adr_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @adr_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adr_lists/1 or /adr_lists/1.json
  def destroy
    @adr_list.destroy
    respond_to do |format|
      format.html { redirect_to adr_lists_url, notice: "Adr list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adr_list
      @adr_list = AdrList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adr_list_params
      params.require(:adr_list).permit(:Address, :Phone, :Name, :LastName, :email)
    end
end
