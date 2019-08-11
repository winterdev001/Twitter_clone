class GreetsController < ApplicationController
  before_action :set_greet, only: [:show, :edit, :update, :destroy]

  # GET /greets
  # GET /greets.json
  def index
    @greets = Greet.all.order("content DESC")
  end

  # GET /greets/1
  # GET /greets/1.json
  def show
  end
  # Confirm
  def confirm
    @greet = Greet.new(greet_params)
  end 

  # GET /greets/new
  def new
    @greet = Greet.new
  end

  # GET /greets/1/edit
  def edit
  end

  # POST /greets
  # POST /greets.json
  def create
    @greet = Greet.new(greet_params)

    if @greet.save
      # Switch to the list screen and display a message saying "You have created new greet!"
      redirect_to greets_path, notice: "Greet was successfully created!!"
    else
      # Redraw the input form.
      render :new
    end  
  end

  # PATCH/PUT /greets/1
  # PATCH/PUT /greets/1.json
  def update
    respond_to do |format|
      if @greet.update(greet_params)
        format.html { redirect_to @greet, notice: 'Greet was successfully updated.' }
        format.json { render :show, status: :ok, location: @greet }
      else
        format.html { render :edit }
        format.json { render json: @greet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /greets/1
  # DELETE /greets/1.json
  def destroy
    @greet.destroy
    respond_to do |format|
      format.html { redirect_to greets_url, notice: 'Greet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_greet
      @greet = Greet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def greet_params
      params.require(:greet).permit(:content)
    end
   
end
