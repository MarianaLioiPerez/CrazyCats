class CfcreactionsController < ApplicationController
  before_action :set_cfcreaction, only: %i[ show edit update destroy ]
  before_action :authenticate_cfcuser!, except: [:index, :show]
  # GET /cfcreactions or /cfcreactions.json
  
  def index
    @cfcreactions = Cfcreaction.all
  end

  # GET /cfcreactions/1 or /cfcreactions/1.json
  def show
  end

  # GET /cfcreactions/new
  def new
    @cfcreaction = Cfcreaction.new
  end

  # GET /cfcreactions/1/edit
  def edit
  end

  # POST /cfcreactions or /cfcreactions.json
  def create
    @cfcreaction = Cfcreaction.new(cfcreaction_params)

    respond_to do |format|
      if @cfcreaction.save
        format.html { redirect_to cfcreaction_url(@cfcreaction), notice: "Cfcreaction was successfully created." }
        format.json { render :show, status: :created, location: @cfcreaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cfcreaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cfcreactions/1 or /cfcreactions/1.json
  def update
    respond_to do |format|
      if @cfcreaction.update(cfcreaction_params)
        format.html { redirect_to cfcreaction_url(@cfcreaction), notice: "Cfcreaction was successfully updated." }
        format.json { render :show, status: :ok, location: @cfcreaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cfcreaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cfcreactions/1 or /cfcreactions/1.json
  def destroy
    @cfcreaction.destroy

    respond_to do |format|
      format.html { redirect_to cfcreactions_url, notice: "Cfcreaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cfcreaction
      @cfcreaction = Cfcreaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cfcreaction_params
      params.require(:cfcreaction).permit(:reaction_type, :kind, :cfccomments_id, :cfcuser_id, :cfcpost_id)
    end
end
