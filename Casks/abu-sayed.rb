cask "abu-sayed" do
  version "1.2.5"
  sha256 "1987c1330f48f1050701f6b92eec2bc8d56ab6a92fd781d083283289fabe5d64"

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
