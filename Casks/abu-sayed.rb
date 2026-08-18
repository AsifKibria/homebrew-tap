cask "abu-sayed" do
  version "1.2.1"
  sha256 "b5817c0520e932a2997c725619f9cb8630f7b7e8fad1e548a4fa056d90b8217b"

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
