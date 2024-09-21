class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

 has_many :sukis

has_many :geektoeics, dependent: :destroy 
validates :name, presence: true 
validates :profile, length: { maximum: 200 } 



has_many :geektoeics, dependent: :destroy
has_many :likes, dependent: :destroy
has_many :liked_geektoeics, through: :likes, source: :geektoeic
has_many :comments, dependent: :destroy

def already_liked?(geektoeic)
  self.likes.exists?(geektoeic_id: geektoeic.id)

end
end


