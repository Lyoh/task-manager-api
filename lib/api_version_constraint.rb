class ApiVersionConstraint
  
  def initialize(params)
    @version = params[:version]
    @default = params[:default]
  end

  def matches?(req)
    @default || req.headers['Accept'].include?("application/vnd.taskmanager.v#{@version}")
  end
end