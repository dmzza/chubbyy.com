class ShapesController < ApplicationController
  before_action :set_shape, only: [:show, :edit, :update, :destroy]

  # GET /shapes
  # GET /shapes.json
  def index
    @shapes = Shape.all
  end

  # GET /shapes/1
  # GET /shapes/1.json
  def show
  end

  # GET /shapes/new
  def new
    @shape = Shape.new
  end

  # GET /shapes/1/edit
  def edit
  end

  # POST /shapes
  # POST /shapes.json
  def create
    @shape = Shape.new(shape_params)

    respond_to do |format|
      if @shape.save
        format.html { redirect_to @shape, notice: 'Shape was successfully created.' }
        format.json { render :show, status: :created, location: @shape }
      else
        format.html { render :new }
        format.json { render json: @shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shapes/1
  # PATCH/PUT /shapes/1.json
  def update
    respond_to do |format|
      if @shape.update(shape_params)
        format.html { redirect_to @shape, notice: 'Shape was successfully updated.' }
        format.json { render :show, status: :ok, location: @shape }
      else
        format.html { render :edit }
        format.json { render json: @shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shapes/1
  # DELETE /shapes/1.json
  def destroy
    @shape.destroy
    respond_to do |format|
      format.html { redirect_to shapes_url, notice: 'Shape was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shape
      @shape = Shape.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shape_params
      params.require(:shape).permit(:name, :image)
    end
end
