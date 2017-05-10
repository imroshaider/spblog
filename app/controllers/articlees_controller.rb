class ArticleesController < ApplicationController
  before_action :set_articlee, only: [:show, :edit, :update, :destroy]

  # GET /articlees
  # GET /articlees.json
  def index
    @articlees = Articlee.all
  end

  # GET /articlees/1
  # GET /articlees/1.json
  def show
  end

  # GET /articlees/new
  def new
    @articlee = Articlee.new
  end

  # GET /articlees/1/edit
  def edit
  end

  # POST /articlees
  # POST /articlees.json
  def create
    @articlee = Articlee.new(articlee_params)

    respond_to do |format|
      if @articlee.save
        format.html { redirect_to @articlee, notice: 'Articlee was successfully created.' }
        format.json { render :show, status: :created, location: @articlee }
      else
        format.html { render :new }
        format.json { render json: @articlee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articlees/1
  # PATCH/PUT /articlees/1.json
  def update
    respond_to do |format|
      if @articlee.update(articlee_params)
        format.html { redirect_to @articlee, notice: 'Articlee was successfully updated.' }
        format.json { render :show, status: :ok, location: @articlee }
      else
        format.html { render :edit }
        format.json { render json: @articlee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articlees/1
  # DELETE /articlees/1.json
  def destroy
    @articlee.destroy
    respond_to do |format|
      format.html { redirect_to articlees_url, notice: 'Articlee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articlee
      @articlee = Articlee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articlee_params
      params.require(:articlee).permit(:titile, :post, :user_id)
    end
end
