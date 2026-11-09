cask "poke-token-bar-team" do
  version "2.5.621"
  sha256 "bdbc2b29e0aa4c67c2d7e693e1b2e9844225b875611fa55d9e1f38365f3d4bd9"

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
