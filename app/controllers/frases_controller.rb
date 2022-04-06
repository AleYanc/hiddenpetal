class FrasesController < ApplicationController
  before_action :set_frase, only: %i[ show edit update destroy ]
  before_action :require_user
  before_action :require_admin_user

  # GET /frases or /frases.json
  def index
    @frase = Frase.last
  end

  # GET /frases/1 or /frases/1.json
  def show
  end

  # GET /frases/new
  def new
    @frase = Frase.new
  end

  # GET /frases/1/edit
  def edit
  end

  # POST /frases or /frases.json
  def create
    @frase = Frase.new(frase_params)

    respond_to do |format|
      if @frase.save
        format.html { redirect_to @frase, notice: "Frase was successfully created." }
        format.json { render :show, status: :created, location: @frase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frases/1 or /frases/1.json
  def update
    respond_to do |format|
      if @frase.update(frase_params)
        format.html { redirect_to @frase, notice: "Frase was successfully updated." }
        format.json { render :show, status: :ok, location: @frase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frases/1 or /frases/1.json
  def destroy
    @frase.destroy
    respond_to do |format|
      format.html { redirect_to frases_url, notice: "Frase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frase
      @frase = Frase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frase_params
      params.require(:frase).permit(:frase)
    end
end
