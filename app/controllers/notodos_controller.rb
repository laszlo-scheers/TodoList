class NotodosController < ApplicationController
  before_action :set_notodo, only: %i[ show edit update destroy ]

  # GET /notodos or /notodos.json
  def index
    @notodos = Notodo.all
  end

  # GET /notodos/1 or /notodos/1.json
  def show
  end

  # GET /notodos/new
  def new
    @notodo = Notodo.new
  end

  # GET /notodos/1/edit
  def edit
  end

  # POST /notodos or /notodos.json
  def create
    @notodo = Notodo.new(notodo_params)

    respond_to do |format|
      if @notodo.save
        format.html { redirect_to notodo_url(@notodo), notice: "Notodo was successfully created." }
        format.json { render :show, status: :created, location: @notodo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @notodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notodos/1 or /notodos/1.json
  def update
    respond_to do |format|
      if @notodo.update(notodo_params)
        format.html { redirect_to notodo_url(@notodo), notice: "Notodo was successfully updated." }
        format.json { render :show, status: :ok, location: @notodo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @notodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notodos/1 or /notodos/1.json
  def destroy
    @notodo.destroy

    respond_to do |format|
      format.html { redirect_to notodos_url, notice: "Notodo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notodo
      @notodo = Notodo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def notodo_params
      params.require(:notodo).permit(:title, :completed)
    end
end
