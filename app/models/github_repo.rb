class GithubRepo
  attr_accessor :name, :url

  def initialize(name, url)
     @name = name
     @url = html_url
  end
end
