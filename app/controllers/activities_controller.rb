class ActivitiesController < ApplicationController
  def create
    @talent = Talent.find(params[:talent_id])
    @activity = @talent.activities.create!(params[:activity])
    redirect_to @talent, :notice => "Activity Created"
    
  end
end
