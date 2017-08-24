class KeywordsController < ApplicationController
  before_action :set_keyword, only: [:show, :edit, :update, :destroy]

  # GET /keywords
  def index
    @keywords = Keyword.all
  end

  # GET /keywords/1
  def show
  end

  # GET /keywords/new
  def new
    @keyword = Keyword.new
  end

  # GET /keywords/1/edit
  def edit
  end

  # POST /keywords
  def create
    @keyword = Keyword.new(keyword_params)

    if @keyword.save
      flash[:success] = 'Keyword created'
      redirect_to keywords_path
    else
      flash[:error] = 'Error Keyword created'
      redirect_to new_keyword_path
    end

  end

  # PATCH/PUT /keywords/1
  def update

    if @keyword.update(keyword_params)
      flash[:success] = 'Keyword edited'
      redirect_to keywords_path
    else
      flash[:error] = 'Error Keyword edited'
      redirect_to keywords_path
    end

  end

  # DELETE /keywords/1
  def destroy

    if @keyword.destroy
      flash[:success] = 'Keyword deleted'
      redirect_to keywords_path
    else
      flash[:error] = 'Error Keyword deleted'
      redirect_to keywords_path
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keyword
      @keyword = Keyword.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def keyword_params
      params.require(:keyword).permit(:name, :description)
    end
end
