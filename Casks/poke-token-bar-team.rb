cask "poke-token-bar-team" do
  version "2.5.629"
  sha256 "b8c33c135b7285d0d22a1b0888a3c2f68f55feadfe5322da7a670e25d5219b9c"

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
