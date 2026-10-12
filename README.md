# awesome-nick/tap

Homebrew tap for apps by [Yevhen Orestov](https://awesomenick.com/).

## Klavuni

Keyboard layout fixer (Ukrainian ↔ English) and clipboard manager for the Mac
menu bar. macOS 26 or later. <https://klavuni.com/>

```sh
brew install --cask awesome-nick/tap/klavuni
```

The app updates itself (Sparkle), so `brew upgrade` leaves it alone unless you
pass `--greedy`. To remove the app and everything it stored:

```sh
brew uninstall --zap klavuni
```

The DMG is the same signed and notarised file that <https://klavuni.com/>
offers for download; the cask only records its version and SHA-256.
