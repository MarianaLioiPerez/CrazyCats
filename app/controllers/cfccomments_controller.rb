class CfccommentsController < ApplicationController
  before_action :set_cfccomment, only: %i[ show edit update destroy ]

  # GET /cfccomments or /cfccomments.json
  def index
    @cfccomments = Cfccomment.all
  end

  # GET /cfccomments/1 or /cfccomments/1.json
  def show
    @cfccomment = Cfccomment.find(params[:id])
  end

  # GET /cfccomments/new
  def new
    @cfccomment = Cfccomment.new
  end

  # GET /cfccomments/1/edit
  def edit
  end

  # POST /cfccomments or /cfccomments.json
  def create
    @cfcpost = Cfcpost.find(params[:cfccomment][:cfcpost_id])
    @cfccomment = Cfccomment.new(cfccomment_params)
    @cfccomment.cfcuser = current_cfcuser

    respond_to do |format|
      if @cfccomment.save
        format.html { redirect_to cfccomment_url(@cfccomment), notice: "Cfccomment was successfully created." }
        format.json { render :show, status: :created, location: @cfccomment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cfccomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cfccomments/1 or /cfccomments/1.json
  def update
    respond_to do |format|
      if @cfccomment.update(cfccomment_params)
        format.html { redirect_to cfccomment_url(@cfccomment), notice: "Cfccomment was successfully updated." }
        format.json { render :show, status: :ok, location: @cfccomment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cfccomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cfccomments/1 or /cfccomments/1.json
  def destroy
    @cfccomment.destroy

    respond_to do |format|
      format.html { redirect_to cfccomments_url, notice: "Cfccomment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cfccomment
      @cfccomment = Cfccomment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cfccomment_params
      params.require(:cfccomment).permit(:content, :cfcpost_id, :cfcuser_id)
    end
end
