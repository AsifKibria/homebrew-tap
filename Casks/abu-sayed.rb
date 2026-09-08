cask "abu-sayed" do
  version "1.2.11"
  sha256 "f1bb7d4950ac186a49252d21dd0d096a0058610aa683104d6813dd1dbb5815a0"

  url "https://github.com/asifkibria/abusayed-keyboard/releases/download/v#{version}/AbuSayed-#{version}.pkg"
  name "Abu Sayed Bangla Keyboard"
  desc "Privacy-first Bangla input method (Avro-style phonetic, Probhat, National)"
  homepage "https://asifkibria.com/abusayed"

  pkg "AbuSayed-#{version}.pkg"

  uninstall pkgutil: "com.abusayed.inputmethod.pkg",
            delete:  "/Library/Input Methods/Abu Sayed.app"

  caveats <<~EOS
    Enable the keyboard in:
    System Settings → Keyboard → Text Input → Edit → + → Bangla → আবু সাঈদ
  EOS
end
