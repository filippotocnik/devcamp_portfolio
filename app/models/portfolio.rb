class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # 2 načina kako lahko naredimo custom scope
  def self.angular
    where(subtitle: 'Angular 4')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
