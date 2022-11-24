class UserToolsController < ApplicationController

  def index
    @user_tools = UserTool.all
  end


  def new
    @user = current_user
    @user_tool = UserTool.new
  end

  def create
    @user = current_user
    @tools = Tool.where(id: params[:user_tool][:tool_id])

    @tools.each do |tool|
      @user_tool = UserTool.new(user: @user, tool: tool)
      render :new, status: 422 and return unless @user_tool.save!
    end

    redirect_to user_tools_path

  end

  private

  def user_tool_params
    params.require(:user_tool).permit(:name)
  end
end
