class LibraryController < ApplicationController

    def save
        
      
          if Timesheet.where(:date => params["date"]).where(:uuid => params["uuid"]).exists?
          Timesheet.where(uuid: params["uuid"], date: params["date"]).update(
            timeblock: params["timeblock"]
          )
      
          else
            @timesheet = Timesheet.create(
              user: User.find(session[:user_id]),
              uuid: params["uuid"],
              date: params["date"],
              timeblock: params["timeblock"]
            )
      
            if !@timesheet.save!
              flash[:danger] = "Failed to create new timesheet"
              raise ActiveRecord::Rollback
            end
      
          end
          
        else 
          return false
        end
    end

end