class JobsController < ApplicationController
  def new
    @job = Job.new(:id => 1)
  end
  def show

  end
  def index
    @job = Job.all

  end
  def create

    @job = Job.new(:job_data)
    @job.save
    render plain: params[:jobs].inspect
    redirect_to job_path

  end
  private
  def params
    job_data = params.require(:job).permit(:name, :description, :picture_url)
  end
end