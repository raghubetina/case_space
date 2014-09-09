class CollectionPhoto < ActiveRecord::Base
  belongs_to :collection
  belongs_to :photo
end
