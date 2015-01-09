class AlugaJogosController < ApplicationController
  before_action :set_aluga_jogo, only: [:show, :edit, :update, :destroy]

  # GET /aluga_jogos
  # GET /aluga_jogos.json
  def index
    @aluga_jogos = AlugaJogo.order :data_alugel
  end

  # GET /aluga_jogos/1
  # GET /aluga_jogos/1.json
  def show
  end

  # GET /aluga_jogos/new
  def new
    @aluga_jogo = AlugaJogo.new
  end

  # GET /aluga_jogos/1/edit
  def edit
  end

  # POST /aluga_jogos
  # POST /aluga_jogos.json
  def create
    @aluga_jogo = AlugaJogo.new(aluga_jogo_params)

    respond_to do |format|
      if @aluga_jogo.save
        format.html { redirect_to @aluga_jogo, notice: 'Aluguel foi cadastrado' }
        format.json { render :show, status: :created, location: @aluga_jogo }
      else
        format.html { render :new }
        format.json { render json: @aluga_jogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aluga_jogos/1
  # PATCH/PUT /aluga_jogos/1.json
  def update
    respond_to do |format|
      if @aluga_jogo.update(aluga_jogo_params)
        format.html { redirect_to @aluga_jogo, notice: 'Alugel foi atualizado' }
        format.json { render :show, status: :ok, location: @aluga_jogo }
      else
        format.html { render :edit }
        format.json { render json: @aluga_jogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aluga_jogos/1
  # DELETE /aluga_jogos/1.json
  def destroy
    @aluga_jogo.destroy
    respond_to do |format|
      format.html { redirect_to aluga_jogos_url, notice: 'Aluguel foi excluido' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluga_jogo
      @aluga_jogo = AlugaJogo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aluga_jogo_params
      params.require(:aluga_jogo).permit(:id_cliente, :id_jogo, :data_alugel, :valor)
    end
end
