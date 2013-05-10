#compdef lab

local state line cmds

_arguments -C '1: :->commands' '2: :->subcommands'

case $state in
  commands)
    cmds=(
      'repository:Manage repositores'
      'user:Manage users'
    )
    _describe -t commands 'lab commands' cmds
    ;;
  subcommands)
    case $line[1] in
      repository)
        cmds=(
          'create:Create a new repository'
          'list:List repositories'
        )
        _describe -t commands 'repository commands' cmds
        ;;
      user)
        cmds=(
          'list:List users'
        )
        _describe -t commands 'user commands' cmds
        ;;
    esac
    ;;
esac
