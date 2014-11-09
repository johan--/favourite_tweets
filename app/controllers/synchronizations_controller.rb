class SynchronizationsController < ApplicationController
  before_action :set_synchronization, only: [:show, :destroy]

  # GET /synchronizations
  def index
    @synchronizations = Resque.all_schedules || {}
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
    run_at = Whenever::Output::Cron.new(1.day, nil, synchronization_params['run_at']).time_in_cron_syntax

    if run_at.present?
      Resque.set_schedule(
          SecureRandom.uuid,
          {class: 'Tweet',
           cron: run_at,
           queue: 'tweets',
           args: 'get_recent_tweets',
           persist: true
          }
      )
      redirect_to synchronizations_url, notice: 'Synchronization was successfully created.'
    else
      render action: 'new'
    end
  end

  # DELETE /synchronizations/1
  def destroy
    Resque.remove_schedule(params[:id])
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
