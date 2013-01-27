module ApplicationHelper
  def below_ie9?
    agent = UserAgent.parse request.env["HTTP_USER_AGENT"]
    agent.browser == "Internet Explorer" and agent.version < "9.0"
  end
end
