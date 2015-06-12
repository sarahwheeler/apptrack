class JobListingsController < ApplicationController
  before_action :set_job_listing, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @job_listings = JobListing.all
    respond_with(@job_listings)
  end

  def show
    respond_with(@job_listing)
  end

  def new
    @job_listing = JobListing.new
    respond_with(@job_listing)
  end

  def edit
  end

  def create
    @job_listing = JobListing.new(job_listing_params)
    @job_listing.save
    respond_with(@job_listing)
  end

  def update
    @job_listing.update(job_listing_params)
    respond_with(@job_listing)
  end

  def destroy
    @job_listing.destroy
    respond_with(@job_listing)
  end

  private
    def set_job_listing
      @job_listing = JobListing.find(params[:id])
    end

    def job_listing_params
      params.require(:job_listing).permit(:url, :company, :title, :date_posted)
    end
end
