class MessageFoldersController < ApplicationController
  before_action :set_message_folder, only: [:show, :edit, :update, :destroy]


  # GET /message_folders
  # GET /message_folders.json
  def index
    @message_folders = MessageFolder.where(:user => current_user)
  end

  # GET /message_folders/1
  # GET /message_folders/1.json
  def show
  end

  # GET /message_folders/new
  def new
    @message_folder = MessageFolder.new
  end

  # GET /message_folders/1/edit
  def edit
  end

  # POST /message_folders
  # POST /message_folders.json
  def create
    @message_folder = MessageFolder.new(message_folder_params)
    @message_folder.user = current_user
    @message_folder.system = false
    if @message_folder.save
      flash[:success] = t('messageFolderCreated')
      redirect_to message_folders_path
    else
      flash[:error] = t('messageFolderCreatedError')
      redirect_to new_message_folder_path
    end
  end

  # PATCH/PUT /message_folders/1
  # PATCH/PUT /message_folders/1.json
  def update
    if @message_folder.update(message_folder_params)
      flash[:success] = t('messageFolderEdited')
      redirect_to message_folders_path
    else
      flash[:error] = t('messageFolderEditedError')
      redirect_to new_message_folder_path
    end
  end

  # DELETE /message_folders/1
  # DELETE /message_folders/1.json
  def destroy
    if @message_folder.destroy
      flash[:success] = t('messageFolderDeleted')
      redirect_to message_folders_path
    else
      flash[:error] = t('messageFolderError')
      redirect_to message_folders_path
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_message_folder
    @message_folder = MessageFolder.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def message_folder_params
    params.require(:message_folder).permit(:name, :system)
  end
end
