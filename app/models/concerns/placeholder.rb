module Placeholder
  extend ActiveSupport::Concern
  # we put methods in concerns for using the same between models
  def self.image_generator(height:, width:)
    "http://via.placeholder.com/#{height}x#{width}"
  end
end