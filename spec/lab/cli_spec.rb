require "spec_helper"

describe Lab::CLI do
  it "can be configured" do
    cli = Lab::CLI.new

    cli.
      expects(
        :ask
      ).
      with(
        "Domain:"
      ).
      returns(
        "git.example.org"
      )

    cli.
      expects(
        :ask
      ).
      with(
        "Private token:"
      ).
      returns(
        "av812sd35"
      )

    File.
      expects(
        :open
      ).
      with(
        Lab::DOTFILE, "w"
      )

    cli.configure
  end
end
