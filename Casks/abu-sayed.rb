cask "abu-sayed" do
  version "1.2.15"
  sha256 "3ecf0af175c2c562ff126992d250198eb7eca10d819a605a068116abe8de3564"

  url "https://asifkibria.com/abusayed/downloads/AbuSayed-#{version}.pkg"
  name "Abu Sayed Bangla Keyboard"
  desc "Privacy-first Bangla input method (Avro-style phonetic, Probhat, National)"
  homepage "https://asifkibria.com/abusayed"

  depends_on macos: :ventura

  pkg "AbuSayed-#{version}.pkg"

  uninstall pkgutil: "com.abusayed.inputmethod.pkg",
            delete:  "/Library/Input Methods/Abu Sayed.app"

  zap trash: [
    "~/Library/Application Support/Abu Sayed",
    "~/Library/Caches/com.abusayed.inputmethod.AbuSayedIME",
    "~/Library/HTTPStorages/com.abusayed.inputmethod.AbuSayedIME",
    "~/Library/Preferences/com.abusayed.inputmethod.AbuSayedIME.plist",
    "~/Library/WebKit/com.abusayed.inputmethod.AbuSayedIME",
  ]

  caveats <<~EOS
    After installation, Keyboard Setup adds Abu Sayed to your input menu,
    shows the menu in the menu bar and switches to it. Control-Space
    (usually) switches back to ABC.

    If it didn't switch, open "/Library/Input Methods/Abu Sayed.app" or
    choose Keyboard Setup from its input menu.

    `brew uninstall --cask abu-sayed` keeps your learned words and settings.
    Add --zap to delete them too.
  EOS
end
