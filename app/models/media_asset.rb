class MediaAsset < ApplicationRecord
    has_many_attached :files
end
