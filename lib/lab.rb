require "lab/version"
require "yaml"
require "gitlab"
require "lab/cli"

module Lab
  DOTFILE = ENV["HOME"] + "/.gitlab"

  extend self

  def configured?
    File.exists? DOTFILE
  end

  def configuration
    YAML.load_file DOTFILE
  end

  def configure
    Gitlab.configure do |config|
      config.endpoint      = "http://#{configuration["domain"]}/api/v3"
      config.private_token = configuration["private_token"]
      config.user_agent    = "Lab #{VERSION}"
    end
  end

  configure if configured?
end
