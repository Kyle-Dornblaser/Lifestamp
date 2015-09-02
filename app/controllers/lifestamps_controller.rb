class LifestampsController < ApplicationController
  before_action :set_lifestamp, only: [:show, :edit, :update, :destroy]

  # GET /lifestamps
  # GET /lifestamps.json
  def index
    @lifestamps = Lifestamp.all
  end

  # GET /lifestamps/1
  # GET /lifestamps/1.json
  def show
  end

  # GET /lifestamps/new
  def new
    @lifestamp = Lifestamp.new
  end

  # GET /lifestamps/1/edit
  def edit
  end

  # POST /lifestamps
  # POST /lifestamps.json
  def create
    @lifestamp = Lifestamp.new(lifestamp_params)

    respond_to do |format|
      if @lifestamp.save
        format.html { redirect_to @lifestamp, notice: 'Lifestamp was successfully created.' }
        format.json { render :show, status: :created, location: @lifestamp }
      else
        format.html { render :new }
        format.json { render json: @lifestamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lifestamps/1
  # PATCH/PUT /lifestamps/1.json
  def update
    respond_to do |format|
      if @lifestamp.update(lifestamp_params)
        format.html { redirect_to @lifestamp, notice: 'Lifestamp was successfully updated.' }
        format.json { render :show, status: :ok, location: @lifestamp }
      else
        format.html { render :edit }
        format.json { render json: @lifestamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifestamps/1
  # DELETE /lifestamps/1.json
  def destroy
    @lifestamp.destroy
    respond_to do |format|
      format.html { redirect_to lifestamps_url, notice: 'Lifestamp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lifestamp
      @lifestamp = Lifestamp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lifestamp_params
      params.require(:lifestamp).permit(:value, :timestamp, :topic_id)
    end
end
