class JobsController < ApplicationController
  def new
    @job = Job.new
  end
  def show

  end
  def index
    @job = Job.all

  end
  def create

    redirect_to job_path

  end
  end