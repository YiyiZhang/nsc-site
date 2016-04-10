class Event < ActiveRecord::Base
  has_many :images, as: :attachable

  belongs_to :user
end
