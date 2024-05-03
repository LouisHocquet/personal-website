class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.save
    redirect_to tools_path
  end

  private

  def tool_params
    params.require(:tool).permit(:name)
  end
end
