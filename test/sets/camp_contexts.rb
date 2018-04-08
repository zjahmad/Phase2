module Contexts
    module CampContexts
        
        def create_camps
          # assumes create_curriculums prior
          @camp1 = FactoryBot.create(:camp, curriculum: @end, location: @cmuq, cost: 300)    
          @camp2 = FactoryBot.create(:camp, curriculum: @end, location: @cmuq, cost: 240, start_date: Date.new(2018,7,23), end_date: Date.new(2018,7,27), location: @cmuq)
        end

        def delete_camps
          @camp1.delete
          @camp2.delete
          delete_curriculums
        end
        
    end
end