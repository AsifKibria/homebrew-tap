cask "abu-sayed" do
  version "1.2.14"
  sha256 "7f84d85d2437b2ce7891b9f59621804c93212e0c04d405a9de14dc2f4fc7c370"

  url "https://asifkibria.com/abusayed/downloads/AbuSayed-#{version}.pkg"
  name "Abu Sayed Bangla Keyboard"
  desc "Privacy-first Bangla input method (Avro-style phonetic, Probhat, National)"
  homepage "https://asifkibria.com/abusayed"

  pkg "AbuSayed-#{version}.pkg"

  uninstall pkgutil: "com.abusayed.inputmethod.pkg",
            delete:  "/Library/Input Methods/Abu Sayed.app"

  caveats <<~EOS
    Enable the keyboard in:
    System Settings > Keyboard > Text Input > Edit > + > Bangla > Abu Sayed
    (the entry is listed under its Bangla name)
  EOS
end
