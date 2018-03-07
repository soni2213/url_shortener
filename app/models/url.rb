class Url < ApplicationRecord
    validates :short_url, :original_url, presence: true
    validates :short_url, uniqueness: true
end
