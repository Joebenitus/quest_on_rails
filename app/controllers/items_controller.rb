require 'faker'
class ItemsController < ApplicationController

  before_action :authenticate_user!
  def index
    @items = Item.all
    @locations = Location.all
    render :index
  end

  def new
    @item = Item.new
    @locations = Location.all
    render :new
  end

  def create
    #@item = Item.new(item_params)
    @item = Item.new(name: Faker::Games::DnD.melee_weapon, rarity: rand(1..99), user_id: current_user.id)
    @locations = Location.all
    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
    render :edit
  end
  
  def show
    @item = Item.find(params[:id])
    
    render :show
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to items_path
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    redirect_to items_path
  end

  def get_rarity
    rarity_hash = { 1..50 => 'Common', 51..75 => 'Uncommon', 76..88 => 'Rare', 89..95 => 'Epic', 96..99 => 'Legendary' }
    rarity_hash.select {|rarity| rarity === self.rarity}.values.first 
  end

  private 
    def item_params
      params.require(:item).permit(:name, :rarity)
    end
end