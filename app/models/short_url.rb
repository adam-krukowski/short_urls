class ShortUrl < ApplicationRecord
  DEFAULT_SLUG_SIZE = 5

  attribute :slug, :string, default: -> { SecureRandom.alphanumeric(DEFAULT_SLUG_SIZE) }

  validates :slug, uniqueness: true
end
