class User < ApplicationRecord
  include Clearance::User

    has_many :events
    enum role: [:participant, :host, :superadmin]
end
