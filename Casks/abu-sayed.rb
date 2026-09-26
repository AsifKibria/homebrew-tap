cask "abu-sayed" do
  version "1.2.13"
  sha256 "b1d8ca5df7dbd38320de69fbcce9e7b54f1522cf7efc94b62cb474b62dde47df"

  url "https://asifkibria.com/abusayed/downloads/AbuSayed-#{version}.pkg"
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
