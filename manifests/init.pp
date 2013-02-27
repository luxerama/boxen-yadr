class yadr {
  include boxen::config
  include homebrew
  include zsh

  $home     = "/Users/${::luser}"
  $dotfiles = "${home}/.yadr"

  repository { $dotfiles:
    source  => 'luxerama/dotfiles',
  }

  exec { "install":
    cwd => $dotfiles,
    command => "rake install",
    require => Repository[$dotfiles]
  }
}
