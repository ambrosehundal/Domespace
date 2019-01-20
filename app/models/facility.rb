class Facility < ApplicationRecord
    has_many :appointments, dependent: :destroy
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    #settings do 
    #    mappings dynamic: false do
    #        indexes :title, type: :text
    #        indexes :location, type: :text
    #        indexes :capacity, type: :integer
    #        indexes :price, type: :integer
    #        indexes :environment, type: :text
    #        indexes :description, type: :text
    #    end
    #end

    def self.search_published(query)
        self.search({
          query: {
            bool: {
              must: [
              {
                multi_match: {
                  query: query,
                  fields: [:title, :location, :environment]
                }
              }
              ]
            }
          }
        })
      end
end
