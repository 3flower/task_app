class TasksController < ApplicationController

  def top
    # new
    @task = Task.new
    # edit

    # index
    # binding.pry
    @tasks = Task.all
    @tasks_not = Task.where(progress: "未着手")
    @tasks_commencement = Task.where(progress: "着手中")
    @tasks_completion = Task.where(progress: "完了")
  end

  def create

    @task = current_user.tasks.new(tasks_params)
    if @task.save
      # flash[:notice] = "投稿しました"
      redirect_to root_path
    else
      render :top
    end
  end

  def update
  end

  def destroy
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :content, :progress)
  end
end
