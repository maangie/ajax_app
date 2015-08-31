class PagesController < ApplicationController
  before_action :set_page, only: [:update]

  def index
    @pages = Page.all
  end

  def update
    # @page.update(page_params)
    @pages = Page.all
    @page.update(page_params)
    @page.save
  end

private
  def set_page
    @page = Page.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:title, :name)
  end
end
