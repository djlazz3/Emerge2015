class JobsController < ApplicationController
  def new
    @job = Job.new
  end
  def show

  end
  def create
    job_data = params.require(:job).permit(:name, :description, :picture_url)
    @job = Job.new job_data
    @job.save
    redirect_to jobs_show_path
  end
end