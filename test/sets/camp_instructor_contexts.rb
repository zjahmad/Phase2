module Contexts
    module CampInstructorContexts
        
        def create_camp_instructors
          # assumes create_curriculums, create_instructors, create_camps run prior
          @Zuhairc1 = FactoryBot.create(:camp_instructor, instructor: @Zuhair, camp: @camp1)
          @Hassanc2 = FactoryBot.create(:camp_instructor, instructor: @Hassan, camp: @camp2)
        end

        def delete_camp_instructors
          @Zuhairc1.delete
          @Hassanc2.delete
          delete_camps
          delete_instructors
        end
        
    end
end