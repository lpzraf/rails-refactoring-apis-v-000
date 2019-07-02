class RepositoriesController < ApplicationController
  def index
    response = GithubService.new({"access_token" => session[:token]})
    @repos_array = response.get_repos
    @username = response.get_username
  end

  def create
    response = Faraday.post "https://api.github.com/user/repos", {name: params[:name]}.to_json, {'Authorization' => "token #{session[:token]}", 'Accept' => 'application/json'}
    redirect_to '/'
  end
end
