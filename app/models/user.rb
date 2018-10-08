class User < ApplicationRecord
    has_many :events
    # enum role: [:customer, :host, :moderator, :superadmin]
end
