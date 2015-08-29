class PagesAjaxController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @page.update(asign_params)
  end

  private
    def set_page
      @page = Page.find(params[:id])
    end

    def page_params
      params.require(:page).permit(:id, :title)
    end
end
