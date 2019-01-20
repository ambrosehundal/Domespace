class Facility < ApplicationRecord
    has_many :appointments, dependent: :destroy
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
end
