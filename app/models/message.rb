class Message < ActiveRecord::Base
  belongs_to :user
  validates :message, :user_id, :sender_id, :receiver_id, :title, :content, presence: true
end
