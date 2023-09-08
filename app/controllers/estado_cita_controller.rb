class EstadoCitaController < ApplicationController
  before_action :set_estado_citum, only: %i[ show edit update destroy ]

  # GET /estado_cita or /estado_cita.json
  def index
    @estado_cita = EstadoCitum.all
  end

  # GET /estado_cita/1 or /estado_cita/1.json
  def show
  end

  # GET /estado_cita/new
  def new
    @estado_citum = EstadoCitum.new
  end

  # GET /estado_cita/1/edit
  def edit
  end

  # POST /estado_cita or /estado_cita.json
  def create
    @estado_citum = EstadoCitum.new(estado_citum_params)

    respond_to do |format|
      if @estado_citum.save
        format.html { redirect_to estado_citum_url(@estado_citum), notice: "Estado citum was successfully created." }
        format.json { render :show, status: :created, location: @estado_citum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estado_citum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_cita/1 or /estado_cita/1.json
  def update
    respond_to do |format|
      if @estado_citum.update(estado_citum_params)
        format.html { redirect_to estado_citum_url(@estado_citum), notice: "Estado citum was successfully updated." }
        format.json { render :show, status: :ok, location: @estado_citum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estado_citum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_cita/1 or /estado_cita/1.json
  def destroy
    @estado_citum.destroy

    respond_to do |format|
      format.html { redirect_to estado_cita_url, notice: "Estado citum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_citum
      @estado_citum = EstadoCitum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estado_citum_params
      params.require(:estado_citum).permit(:nombreEstado)
    end
end
