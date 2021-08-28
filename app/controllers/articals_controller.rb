class ArticalsController < ApplicationController
  before_action :set_artical, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /articals or /articals.json
  def index
    @articals = Artical.all
  end

  # GET /articals/1 or /articals/1.json
  def show
  end

  # GET /articals/new
  def new
    @artical = current_user.articals.build
  end

  # GET /articals/1/edit
  def edit
  end

  # POST /articals or /articals.json
  def create
    @artical = current_user.articals.build(artical_params)

    respond_to do |format|
      if @artical.save
        format.html { redirect_to @artical, notice: "Artical was successfully created." }
        format.json { render :show, status: :created, location: @artical }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articals/1 or /articals/1.json
  def update
    respond_to do |format|
      if @artical.update(artical_params)
        format.html { redirect_to @artical, notice: "Artical was successfully updated." }
        format.json { render :show, status: :ok, location: @artical }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articals/1 or /articals/1.json
  def destroy
    @artical.destroy
    respond_to do |format|
      format.html { redirect_to articals_url, notice: "Artical was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artical
      @artical = Artical.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artical_params
      params.require(:artical).permit(:title, :body)
    end
end
