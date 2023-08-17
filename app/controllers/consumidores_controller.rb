class ConsumidoresController < ApplicationController
  before_action :set_consumidor, only: %i[ show edit update destroy ]

  def index
    @consumidores = Consumidor.all
  end

  def show
  end

  def new
    @consumidor = Consumidor.new
  end

  def edit
  end

  def create
    @consumidor = Consumidor.new(consumidor_params)

    respond_to do |format|
      if @consumidor.save
        format.html { redirect_to consumidor_url(@consumidor), notice: t('activerecord.notices.consumidor.created') }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @consumidor.update(consumidor_params)
        format.html { redirect_to consumidor_url(@consumidor), notice: t('activerecord.notices.consumidor.updated') }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumidores/1 or /consumidores/1.json
  def destroy
    @consumidor.destroy

    respond_to do |format|
      format.html { redirect_to consumidores_url, notice: "Consumidor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consumidor
      @consumidor = Consumidor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consumidor_params
      params.require(:consumidor).permit(:nome, :telefone, :email)
    end
end
