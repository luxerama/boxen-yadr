class yadr {
  include boxen::config
  include homebrew

  $yadr_root = "${luser}/.yadr"

  repository { "${yadr_root}/":
    source => "luxerama/yadr"
  }

  exec { "${yadr_root}":
    cwd => $yadr_root,
    command => "rake install",
    require => Repository[$yadr_root]
  }
}
