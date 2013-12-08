class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_attached_file :avatar,
                    styles: { full: "300x300#", medium: "100x100#", mini: "40x40#" },
                    default_url: "/system/items/photos/:style/missing.png"

end
