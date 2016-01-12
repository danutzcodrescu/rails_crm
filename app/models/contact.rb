class Contact < ActiveRecord::Base
    before_save :full_name
    validates :First_Name, :Last_Name, :Email, :Title, presence: true

    
    private
        def full_name
            self.Full_Name=self.First_Name + " " + self.Last_Name
            
        end
end
