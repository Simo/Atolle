class AccordionsController < ApplicationController
  def index
    @accordions = Accordion.all
  end

  def show
    @accordion = Accordion.find(params[:id])
  end

  def new
    @accordion = Accordion.new
  end

  def create
    @accordion = Accordion.new(params[:accordion])
    if @accordion.save
      redirect_to @accordion, :notice => "Successfully created accordion."
    else
      render :action => 'new'
    end
  end

  def edit
    @accordion = Accordion.find(params[:id])
  end

  def update
    @accordion = Accordion.find(params[:id])
    if @accordion.update_attributes(params[:accordion])
      redirect_to @accordion, :notice  => "Successfully updated accordion."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @accordion = Accordion.find(params[:id])
    @accordion.destroy
    redirect_to accordions_url, :notice => "Successfully destroyed accordion."
  end
end
