cask "memex" do
  version "0.1.2"
  sha256 "d6d69df15005d963ad9e1831768d1899e456f52b0cf23e21e576cfb58d66f57d"

  url "https://github.com/Two-Weeks-Team/memex/releases/download/v#{version}/Memex_#{version}_aarch64.dmg",
      verified: "github.com/Two-Weeks-Team/memex/"
  name "Memex"
  desc "Desktop browser for AI session JSONL transcripts"
  homepage "https://github.com/Two-Weeks-Team/memex"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Memex.app"

  zap trash: [
    "~/Library/Application Support/dev.sgwannabe.memex",
    "~/Library/Caches/dev.sgwannabe.memex",
    "~/Library/Preferences/dev.sgwannabe.memex.plist",
    "~/Library/Saved Application State/dev.sgwannabe.memex.savedState",
  ]
end
