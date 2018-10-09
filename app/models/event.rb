class Event < ApplicationRecord
    include PgSearch
    pg_search_scope :filter_by_interests, :against => [:interests]

    belongs_to :user

end
