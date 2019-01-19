class Facility < ApplicationRecord
    has_many :appointments, dependent: :destroy
end
