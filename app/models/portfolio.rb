class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attr| attr['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  # 2 načina kako lahko naredimo custom scope
  def self.angular
    where(subtitle: 'Angular 4')
  end

  def self.by_position
    order('position ASC')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    # this ||= is like set this up only if main_image is nil, so dont overwrite nothing
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '300', width: '200')
  end
end
