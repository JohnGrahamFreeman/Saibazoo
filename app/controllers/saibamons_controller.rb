class SaibamonsController < ApplicationController
  before_action :set_saibamon, only: [:show, :edit, :update, :destroy]

  # GET /saibamons
  # GET /saibamons.json
  def index
    @saibamons = Saibamon.all
  end

  # GET /saibamons/1
  # GET /saibamons/1.json
  def show
  end

  # GET /saibamons/new
  def new
    @saibamon = Saibamon.new
  end

  # GET /saibamons/1/edit
  def edit
  end

  # POST /saibamons
  # POST /saibamons.json
  def create
    @user = current_user
    @saibamon = Saibamon.new(saibamon_params)
    @saibamon.user = @user

    respond_to do |format|
      if @saibamon.save
        format.html { redirect_to @saibamon, notice: 'Saibamon was successfully created.' }
        format.json { render :show, status: :created, location: @saibamon }
      else
        format.html { render :new }
        format.json { render json: @saibamon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saibamons/1
  # PATCH/PUT /saibamons/1.json
  def update
    respond_to do |format|
      if @saibamon.update(saibamon_params)
        format.html { redirect_to @saibamon, notice: 'Saibamon was successfully updated.' }
        format.json { render :show, status: :ok, location: @saibamon }
      else
        format.html { render :edit }
        format.json { render json: @saibamon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saibamons/1
  # DELETE /saibamons/1.json
  def destroy
    @saibamon.destroy
    respond_to do |format|
      format.html { redirect_to saibamons_url, notice: 'Saibamon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saibamon
      @saibamon = Saibamon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saibamon_params
      params.require(:saibamon).permit(:name, :species_id, :gender, :birthday)
    end
end
