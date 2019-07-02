class GithubRepo
  attr_accessor :name, :url

  def initialize(hash)
     hash.name = name
     hash.url = html_url
  end
end
