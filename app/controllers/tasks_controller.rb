class TasksController < ApplicationController
  def create
    @task = Task.create!(allowed_params)
    
    redirect_to tasks_url
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes!(allowed_params)
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
  end

  def destroy
    @task = Task.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
  end
  
  private
  
  def allowed_params
    params.require(:task).permit(:complete, :name, :project_id)
  end
end
