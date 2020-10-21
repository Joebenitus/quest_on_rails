class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  belongs_to :location
  has_many :items
  has_many :quests
  after_initialize :init

  # first approach ->
  def init
    self.location_id =1
  end
  # An approach -> attribute :location_id, :integer, default: 1
end
