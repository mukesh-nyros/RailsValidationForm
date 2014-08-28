class ValidformsController < ApplicationController
  before_action :set_validform, only: [:show, :edit, :update, :destroy]

  # GET /validforms
  # GET /validforms.json
  def index
    @validforms = Validform.all
  end

  # GET /validforms/1
  # GET /validforms/1.json
  def show
  end

  # GET /validforms/new
  def new
    @validform = Validform.new
  end

  # GET /validforms/1/edit
  def edit
  end

  # POST /validforms
  # POST /validforms.json
  def create
    @validform = Validform.new(validform_params)

    respond_to do |format|
      if @validform.save
        format.html { redirect_to @validform, notice: 'Validform was successfully created.' }
        format.json { render :show, status: :created, location: @validform }
      else
        format.html { render :new }
        format.json { render json: @validform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /validforms/1
  # PATCH/PUT /validforms/1.json
  def update
    respond_to do |format|
      if @validform.update(validform_params)
        format.html { redirect_to @validform, notice: 'Validform was successfully updated.' }
        format.json { render :show, status: :ok, location: @validform }
      else
        format.html { render :edit }
        format.json { render json: @validform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /validforms/1
  # DELETE /validforms/1.json
  def destroy
    @validform.destroy
    respond_to do |format|
      format.html { redirect_to validforms_url, notice: 'Validform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_validform
      @validform = Validform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def validform_params
      params.require(:validform).permit(:Username, :Password, :DateofBirth, :Email, :Phone)
    end
end
