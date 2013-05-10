require "thor"
require "lab/subcommands"

module Lab

  class CLI < Thor

    desc "configure", "Configure lab"
    def configure
      domain        = ask "Domain:"
      private_token = ask "Private token:"

      yaml = YAML.dump "domain" => domain, "private_token" => private_token

      file = File.open DOTFILE, "w" do |file|
        file.write yaml
      end
    end

    desc "repository COMMAND", "Manage repositories"
    subcommand "repository", Subcommands::Repository

    desc "user COMMAND", "Manage users"
    subcommand "user", Subcommands::User
  end

end
