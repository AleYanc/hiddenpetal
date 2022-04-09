class MarqueesController < ApplicationController
  before_action :set_marquee, only: %i[ show edit update destroy ]

  # GET /marquees or /marquees.json
  def index
    @marquee = Marquee.last
  end

  # GET /marquees/1 or /marquees/1.json
  def show
  end

  # GET /marquees/new
  def new
    @marquee = Marquee.new
  end

  # GET /marquees/1/edit
  def edit
  end

  # POST /marquees or /marquees.json
  def create
    @marquee = Marquee.new(marquee_params)

    respond_to do |format|
      if @marquee.save
        format.html { redirect_to @marquee, notice: "Marquee was successfully created." }
        format.json { render :show, status: :created, location: @marquee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @marquee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marquees/1 or /marquees/1.json
  def update
    respond_to do |format|
      if @marquee.update(marquee_params)
        format.html { redirect_to @marquee, notice: "Marquee was successfully updated." }
        format.json { render :show, status: :ok, location: @marquee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @marquee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marquees/1 or /marquees/1.json
  def destroy
    @marquee.destroy
    respond_to do |format|
      format.html { redirect_to marquees_url, notice: "Marquee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marquee
      @marquee = Marquee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def marquee_params
      params.require(:marquee).permit(:title)
    end
end
