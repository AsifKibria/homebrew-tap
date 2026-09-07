cask "abu-sayed" do
  version "1.2.4"
  sha256 "04438f2ae0c082a70d126d129dd1ac79e8880f36e79730d691e87fafaa8c5fd5"

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
