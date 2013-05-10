require "spec_helper"

describe Lab::Subcommands::User do
  it "can list users" do
    cli = Lab::Subcommands::User.new

    users= [
      stub(name: "foo"),
      stub(name: "bar")
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
