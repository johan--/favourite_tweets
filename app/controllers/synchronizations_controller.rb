class SynchronizationsController < ApplicationController
  before_action :set_synchronization, only: [:show, :edit, :update, :destroy]

  # GET /synchronizations
  def index
    @synchronizations = Resque.all_schedules || {}
  end

  # GET /synchronizations/1
  def show
  end

  # GET /synchronizations/new
  def new
    @synchronization = Synchronization.new
  end

  # GET /synchronizations/1/edit
  def edit
  end

  # POST /synchronizations
  def create
    @synchronization = Synchronization.new(synchronization_params)

    if @synchronization.save
      redirect_to @synchronization, notice: 'Synchronization was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /synchronizations/1
  def update
    if @synchronization.update(synchronization_params)
      redirect_to @synchronization, notice: 'Synchronization was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /synchronizations/1
  def destroy
    @synchronization.destroy
    redirect_to synchronizations_url, notice: 'Synchronization was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_synchronization
      @synchronization = Resque.fetch_schedule(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def synchronization_params
      params[:synchronization]
    end
end
