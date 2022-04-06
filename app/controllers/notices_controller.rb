class NoticesController < ApplicationController
  before_action :set_notice, only: %i[ show edit update destroy ]
  before_action :require_user
  before_action :require_admin_user

  # GET /notices or /notices.json
  def index
    @notice = Notice.last
  end

  # GET /notices/1 or /notices/1.json
  def show
  end

  # GET /notices/new
  def new
    @notice = Notice.new
  end

  # GET /notices/1/edit
  def edit
  end

  # POST /notices or /notices.json
  def create
    @notice = Notice.new(notice_params)

    if @notice.save
      flash[:success] = 'Noticia creada con éxito'
      redirect_to @notice
    else
      flash[:danger] = "Hubo un error al crear la noticia. Errores: #{@notice.errors.full_messages}"
      render 'new'
    end
  end

  # PATCH/PUT /notices/1 or /notices/1.json
  def update

    if @notice.update(notice_params)
      flash[:success] = 'Noticia creada con éxito'
      redirect_to @notice
    else
      flash[:danger] = "Hubo un error al crear la noticia. Errores: #{@notice.errors.full_messages}"
      render 'new'
    end
  end

  # DELETE /notices/1 or /notices/1.json
  def destroy
    @notice.destroy
    respond_to do |format|
      format.html { redirect_to notices_url, notice: "Notice was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice
      @notice = Notice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notice_params
      params.require(:notice).permit(:title, :desc)
    end
end
