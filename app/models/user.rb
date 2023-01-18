class User < ApplicationRecord
  has_many :horses
  has_many :auctions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def index
    @users = User.all
  end

  def show
    @user = Flat.find(params[:id])
  end
end
