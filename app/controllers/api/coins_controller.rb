class Api::EventsController < ApplicationController
  def index
    @Tools = Tool.all
  end

  def show
  end

  def new
    @Tool = Tool.new
  end

  def create
    @Tool = Tool.new(Tool_params)

    if @event.save
      redirect_to Tool_path(@Tool)
    else
      render :new
    end
  end

  def update
    if @Tool.update(Tool_params)
      redirect_to Tool_path(@Tool)
    else
      render :edit
    end
  end

  private
    def Tool_routes
      @Tool = Tool.find(params[:id])
    end

    def Tool_params
      params.require(:Tool).permit(:title, :category, :description, :date)
    end
  end

end
