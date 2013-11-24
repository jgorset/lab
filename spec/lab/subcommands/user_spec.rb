require "spec_helper"

describe Lab::Subcommands::User do
  it "can list users" do
    cli = Lab::Subcommands::User.new

    users= [
      double(name: "foo"),
      double(name: "bar")
    ]

    Gitlab.
      expects(
        :users
      ).
      returns(
        users
      )

    users.each do |user|
      cli.
        expects(
          :puts
        ).
        with(
          user.name
        )
    end

    cli.list
  end
end
