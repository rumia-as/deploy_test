class RareFishesController < ApplicationController
  before_action :set_rare_fish, only: %i[ show edit update destroy ]

  # GET /rare_fishes or /rare_fishes.json
  def index
    @rare_fishes = RareFish.all
  end

  # GET /rare_fishes/1 or /rare_fishes/1.json
  def show
  end

  # GET /rare_fishes/new
  def new
    @rare_fish = RareFish.new
  end

  # GET /rare_fishes/1/edit
  def edit
  end

  # POST /rare_fishes or /rare_fishes.json
  def create
    @rare_fish = RareFish.new(rare_fish_params)

    respond_to do |format|
      if @rare_fish.save
        format.html { redirect_to @rare_fish, notice: "Rare fish was successfully created." }
        format.json { render :show, status: :created, location: @rare_fish }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rare_fish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rare_fishes/1 or /rare_fishes/1.json
  def update
    respond_to do |format|
      if @rare_fish.update(rare_fish_params)
        format.html { redirect_to @rare_fish, notice: "Rare fish was successfully updated." }
        format.json { render :show, status: :ok, location: @rare_fish }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rare_fish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rare_fishes/1 or /rare_fishes/1.json
  def destroy
    @rare_fish.destroy
    respond_to do |format|
      format.html { redirect_to rare_fishes_url, notice: "Rare fish was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  public
    # Use callbacks to share common setup or constraints between actions.
    def set_rare_fish
      @rare_fish = RareFish.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rare_fish_params
      params.require(:rare_fish).permit(:fish_id, :user, :title, :content, :image, :adless, :like)
    end
end
