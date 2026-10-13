cask "abu-sayed" do
  version "1.2.16"
  sha256 "a7df38d6b8bdc44ed27abb8df3cfc3f8e311f9614a70f1a4973ed2bfa24f8cce"

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
