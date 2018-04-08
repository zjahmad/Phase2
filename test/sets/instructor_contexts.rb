module Contexts
    module InstructorContexts
        
        def create_instructors
          @Zuhair = FactoryBot.create(:instructor, first_name: "Zuhair", last_name: "Ahmad", bio: nil, email: "zuhair4business@gmail.com", phone: "66302947")
          @Hassan = FactoryBot.create(:instructor, first_name: "Hassan", last_name: "Nadeem", bio: nil, email: nil, active: true)
        end

        def delete_instructors
          @Zuhair.delete
          @Hassan.delete
        end
        
    end
end