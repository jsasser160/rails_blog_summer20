class PagesController < ApplicationController
  def index
    # return array pages
    @pages = Page.all 
    # render index.html.erb
  end

  def show
    # return single page with certain id
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
    # creates only in memory 
  end

  def create
    @page = Page.new(pages_params)
    if @page.save
      redirect_to pages_path
    
    else 
      render :new
    end
  end

  def edit
  end

  def update
  
  end

  def destroy
  
  end

  private
    def pages_params
      params.require(:page).permit(:title, :author, :body)
    end
end
