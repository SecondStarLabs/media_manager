class MediaAsset < ApplicationRecord
    has_many_attached :files
    has_one_attached :avatar

    def list_accepted_mimes
        mimes = ["application", "audio", "image", "message", "model", "multipart", "text", "video"]
        accepted_mimes = [mimes[2], mimes[7]]
    end

    # Active Storage method for model
    def get_content_type
        ma = self
        file = ma.files.first
        get_structured_content_type(file)
        # file_content_type = file.content_type
        # mime_type_array = file_content_type.split("/")
        # structured_content_type = OpenStruct.new(media_type: mime_type_array.first, media_subtype: mime_type_array.last)
    end
    
    def get_structured_content_type(file)
        file_content_type = file.content_type
        mime_type_array = file_content_type.split("/")
        structured_content_type = OpenStruct.new(media_type: mime_type_array.first, media_subtype: mime_type_array.last)        
    end

end
