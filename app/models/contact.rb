class Contact < ActiveRecord::Base
    before_save :full_name, :emailDown
    validates :First_Name, :Last_Name, :Email, :Title, presence: true
    has_many :logs, dependent: :destroy
    
    private
        def full_name
            self.Full_Name=self.First_Name + " " + self.Last_Name
            
        end
        
        def emailDown
            self.Email=self.Email.downcase
        end
end
