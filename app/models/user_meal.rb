class UserMeal < ApplicationRecord
    belongs_to :meal 
    belongs_to :user

    def month_name
        num = self.date.month
        
        case num
        when 1
            "January"
        when 2
            "February"
        when 3
            "March"
        when 4
            "April"
        when 5
            "May"
        when 6
            "June"
        when 7
            "July"
        when 8
            "August"
        when 9 
            "September"
        when 10
            "October"
        when 11
            "November"
        when 12
            "December"
        end
    end

    def oclock
        num = self.time.hour
        
        case num
        when 4
            "4:00 AM"
        when 5
            "5:00 AM"
        when 6
            "6:00 AM"
        when 7
            "7:00 AM"
        when 8
            "8:00 AM"
        when 9
            "9:00 AM"
        when 10
            "10:00 AM"
        when 11
            "11:00 AM"
        when 12 
            "12:00 pM"
        when 13
            "1:00 PM"
        when 14
            "2:00 PM"
        when 15
            "3:00 PM"
        when 16
            "4:00 PM"
        when 17
            "5:00 PM"
        when 18
            "6:00 PM"
        when 19
            "7:00 PM"
        when 20
            "8:00 PM"
        when 21 
            "9:00 PM"
        when 22
            "10:00 PM"    
        end
    end

end
