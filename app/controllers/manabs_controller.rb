class ManabsController < ApplicationController
  before_action :set_manab, only: [:show, :edit, :update, :destroy]

  # GET /manabs
  # GET /manabs.json
  def index
    @manabs = Manab.all
  end

  # GET /manabs/1
  # GET /manabs/1.json
  def show
  end

  # GET /manabs/new
  def new
    @manab = Manab.new
  end

  # GET /manabs/1/edit
  def edit
  end

  # POST /manabs
  # POST /manabs.json
  def create
    @manab = Manab.new(manab_params)

    respond_to do |format|
      if @manab.save
        format.html { redirect_to @manab, notice: 'Manab was successfully created.' }
        format.json { render :show, status: :created, location: @manab }
      else
        format.html { render :new }
        format.json { render json: @manab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manabs/1
  # PATCH/PUT /manabs/1.json
  def update
    respond_to do |format|
      if @manab.update(manab_params)
        format.html { redirect_to @manab, notice: 'Manab was successfully updated.' }
        format.json { render :show, status: :ok, location: @manab }
      else
        format.html { render :edit }
        format.json { render json: @manab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manabs/1
  # DELETE /manabs/1.json
  def destroy
    @manab.destroy
    respond_to do |format|
      format.html { redirect_to manabs_url, notice: 'Manab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manab
      @manab = Manab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manab_params
      params.require(:manab).permit(:title, :manabi)
    end
end
