class UpdatesController < ApplicationController
  before_action :set_update, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @updates = Update.all
    respond_with(@updates)
  end

  def show
    respond_with(@update)
  end

  def new
    @update = Update.new
    respond_with(@update)
  end

  def edit
  end

  def create
    @update = Update.new(update_params)
    @update.save
    respond_with(@update)
  end

  def update
    @update.update(update_params)
    respond_with(@update)
  end

  def destroy
    @update.destroy
    respond_with(@update)
  end

  private
    def set_update
      @update = Update.find(params[:id])
    end

    def update_params
      params.require(:update).permit(:phone, :message)
    end
end
