require "lab/version"
require "yaml"
require "gitlab"
require "lab/cli"

module Lab
  DOTFILE = ENV["HOME"] + "/.gitlab"

  begin
    file = File.open DOTFILE
  rescue
    puts "Hi! Since this is your first time using lab, you must authenticate before proceeding."

    CLI.new.configure

    puts
    puts "Thanks, you're good to go!"
    puts

    retry
  end

  configuration = YAML.load file.read

  Gitlab.configure do |config|
    config.endpoint      = "http://#{configuration["domain"]}/api/v3"
    config.private_token = configuration["private_token"]
    config.user_agent    = "Lab #{VERSION}"
  end
end
