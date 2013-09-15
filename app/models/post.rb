class Post < ActiveRecord::Base
  # Macros
  extend FriendlyId
  friendly_id :page_title, use: [:slugged, :history]
  acts_as_taggable

  # Associations
  belongs_to :user
  has_one :upload, as: :uploadable
  accepts_nested_attributes_for :upload

  # Validations
  validates :page_title, :slug, presence: true
  validates :slug, uniqueness: true

  # Scopes
  scope :active, -> { where(active: true) }
  scope :published, -> { where("published < ?", Time.now) }
  scope :excluder, -> { tagged_with(Post.tag_counts.reject { |tag| tag.name == "about" || tag.name == "homepage" }.map(&:name), any: true) }
end
