module Lab

  module Subcommands

    class Repository < Thor

      desc "repository list", "List repositories"
      def list
        Gitlab.projects.each do |project|
          puts project.name
        end
      end

      desc "repository create NAME", "Create a new repository"
      def create
        Gitlab.create_project name
      end

    end

  end

end
