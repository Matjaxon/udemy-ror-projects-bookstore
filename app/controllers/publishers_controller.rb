class PublishersController < ApplicationController
  def new
    @page_title = "Add New Publisher"
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      redirect_to publishers_path
      flash[:notice] = "Publisher Created"
    else
      render "new"
    end
  end

  def update
    @publisher = Publisher.find(params[:id])
    @publisher.update(publisher_params)
    flash[:notice] = "Publisher Updated"
    redirect_to publisher_path
  end

  def edit
    @publisher = Publisher.find(params[:id])
  end

  def destroy
    @publisher = Publisher.find(params[:id])
    @publisher.destroy
    flash[:notice] = "Publisher Removed"
    redirect_to publishers_path
  end

  def index
    @publishers = Publisher.all
  end

  def show
    @categories = Category.all
  end

  private

  def publisher_params
    params.require(:publisher).permit(:name)
  end

end
