require "spec_helper"

describe Lab::Subcommands::Repository do
  it "can list repositories" do
    cli = Lab::Subcommands::Repository.new

    repositories = [
      stub(name: "foo"),
      stub(name: "bar")
    ]

    Gitlab.
      expects(
        :projects
      ).
      returns(
        repositories
      )

    repositories.each do |repository|
      cli.
        expects(
          :puts
        ).
        with(
          repository.name
        )
    end

    cli.list
  end

  it "can create repositories" do
    cli = Lab::Subcommands::Repository.new

    Gitlab.
      expects(
        :create_project
      ).
      with(
        "foo"
      )

    cli.create "foo"
  end
end
