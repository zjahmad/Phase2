module Contexts
    module CurriculumContexts
        
        def create_curriculums
          @end = FactoryBot.create(:curriculum, name: "lol", min_rating: 100, max_rating: 1000 )
          @start = FactoryBot.create(:curriculum, name: "Start of the world", min_rating: 500, max_rating: 2000)
        end

        def delete_curriculums
          @end.delete
          @start.delete
        end
    end
end