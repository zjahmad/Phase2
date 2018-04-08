module Contexts
    module LocationContexts
        
        def create_active_locations
          @cmuq = FactoryBot.create(:location, name: "CMUQ", street_1: "QF", street_2: nil, city: "Doha", zip: "12345")
          @cmup = FactoryBot.create(:location) 
        end

        def delete_active_locations
          @cmuq.delete
          @cmup.delete
        end
        
    end
end