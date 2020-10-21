class ItemsController < ApplicationController
  before_action :authenticate_user!
  def index
    @items = Item.all
    render :index
  end

  def new
  end

  def create
  end
  def edit
  end
  def show
  end
  def update
  end
  def destory
  end
end