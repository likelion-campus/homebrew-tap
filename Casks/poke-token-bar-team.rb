cask "poke-token-bar-team" do
  version "2.5.631"
  sha256 "8a3ecc4fa8d2a24ff8d142ba47db8bb9c3e81978e6f5dac9401a0e2bfae72b8c"

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
