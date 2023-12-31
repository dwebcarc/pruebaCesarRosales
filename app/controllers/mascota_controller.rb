class MascotaController < ApplicationController
  before_action :set_mascotum, only: %i[ show edit update destroy ]

  # GET /mascota or /mascota.json
  def index
    @mascota = Mascotum.all
  end

  # GET /mascota/1 or /mascota/1.json
  def show
  end

  # GET /mascota/new
  def new
    @mascotum = Mascotum.new
  end

  # GET /mascota/1/edit
  def edit
  end

  # POST /mascota or /mascota.json
  def create
    @mascotum = Mascotum.new(mascotum_params)

    respond_to do |format|
      if @mascotum.save
        format.html { redirect_to mascotum_url(@mascotum), notice: "Mascotum was successfully created." }
        format.json { render :show, status: :created, location: @mascotum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mascotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mascota/1 or /mascota/1.json
  def update
    respond_to do |format|
      if @mascotum.update(mascotum_params)
        format.html { redirect_to mascotum_url(@mascotum), notice: "Mascotum was successfully updated." }
        format.json { render :show, status: :ok, location: @mascotum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mascotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mascota/1 or /mascota/1.json
  def destroy
    @mascotum.destroy

    respond_to do |format|
      format.html { redirect_to mascota_url, notice: "Mascotum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mascotum
      @mascotum = Mascotum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mascotum_params
      params.require(:mascotum).permit(:nombre, :especie, :raza, :fotoPerfil, :fechaNacimiento, :notas, :clientes_id)
    end
end
