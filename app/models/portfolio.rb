class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # 2 načina kako lahko naredimo custom scope
  def self.angular
    where(subtitle: 'Angular 4')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    # this ||= is like set this up only if main_image is nil, so dont overwrite nothing
    self.main_image ||= "http://via.placeholder.com/600x400"
    self.thumb_image ||= "http://via.placeholder.com/300x200"
  end
end
