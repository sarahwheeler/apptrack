class JobAppsController < ApplicationController
  before_action :set_job_app, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @job_apps = JobApp.all
    respond_with(@job_apps)
  end

  def show
    respond_with(@job_app)
  end

  def new
    @job_app = JobApp.new
    respond_with(@job_app)
  end

  def edit
  end

  def create
    @job_app = JobApp.new(job_app_params)
    @job_app.save
    respond_with(@job_app)
  end

  def update
    @job_app.update(job_app_params)
    respond_with(@job_app)
  end

  def destroy
    @job_app.destroy
    respond_with(@job_app)
  end

  private
    def set_job_app
      @job_app = JobApp.find(params[:id])
    end

    def job_app_params
      params.require(:job_app).permit(:link, :date_saved, :date_applied)
    end
end
