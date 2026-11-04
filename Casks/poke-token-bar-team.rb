cask "poke-token-bar-team" do
  version "2.5.616"
  sha256 "7039e781487966f2b73606980e6d82a2af002e49228b36f9f64e4b203019b174"

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
