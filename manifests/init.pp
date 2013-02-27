class yadr {
  include boxen::config
  include homebrew
  include zsh

  $yadr_root = "/Users/${luser}/.yadr"

  repository { "${yadr_root}/":
    source => "luxerama/yadr"
  }

  exec { "${yadr_root}":
    cwd => $yadr_root,
    command => "rake install",
    require => Repository[$yadr_root]
  }
}
