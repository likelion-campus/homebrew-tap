cask "poke-token-bar-team" do
  version "2.5.607"
  sha256 "5d394238ddc78aed22e4b00303fad1865dcb557992eb04bdd4eeeb5a84e3b155"

  url "https://github.com/likelion-campus/PokeTokenBar/releases/download/v#{version}/PokeTokenBar.zip"
  name "PokeTokenBar Team"
  desc "PokeTokenBar with the team plaza"
  homepage "https://github.com/likelion-campus/PokeTokenBar"

  app "PokeTokenBar.app"

  # The app is self-signed and not notarized, so Gatekeeper would block the download.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/PokeTokenBar.app"]
  end
end
