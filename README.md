# Lab

[![Code Climate](https://codeclimate.com/github/jgorset/lab.png)](https://codeclimate.com/github/jgorset/lab)
[![Build Status](https://travis-ci.org/jgorset/lab.png?branch=master)](https://travis-ci.org/jgorset/lab)

Command-line client for GitLab.

## Installation

    $ gem install gitlab-cli

## Usage

    $ lab

    # Create a new repository
    $ lab repository create hello-world

    # List repositores
    $ lab repository list

    # List users
    $ lab user list

## Completion

Lab comes with autocompletion for your favorite shell (as long as your favorite shell
is zsh). To install it, copy `completion/lab.zsh` onto your `$FPATH`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## I love you

Johannes Gorset made this. You should [tweet me](http://twitter.com/jgorset) if you can't get
it to work. In fact, you should tweet me anyway.
