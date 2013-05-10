module Lab

  module Subcommands

    class User < Thor

      desc "list", "List users"
      def list
        Gitlab.users.each do |user|
          puts user.name
        end
      end

      # TODO: The Gitlab API client is not compatible with
      # creating new users in the latest version of the API.
      #
      # We should fix that.
      #
      #desc "create EMAIL PASSWORD", "Create a new user"
      #method_option :name
      #method_option :skype
      #method_option :linkedin
      #method_option :twitter
      #method_option :projects_limit
      #def create email, password
      #  
      #end

    end

  end

end
