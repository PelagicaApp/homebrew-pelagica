# homebrew-pelagica

A [Homebrew](https://brew.sh) tap for [Pelagica](https://github.com/PelagicaApp/pelagica),
a web, desktop, and TV client for [Jellyfin](https://jellyfin.org).

## Install

```sh
brew tap PelagicaApp/pelagica
brew trust PelagicaApp/pelagica
brew install --cask pelagica
```

Homebrew 6.0 refuses to load casks from a third-party tap until you trust it,
which is why `brew trust` is needed here.

Only Apple Silicon is supported — upstream publishes an `arm64` build only.

## Upgrade

```sh
brew upgrade --cask pelagica
```

The cask is bumped automatically within a day of each upstream release by
[`.github/workflows/bump.yml`](.github/workflows/bump.yml).

## Uninstall

To remove the app:

```sh
brew uninstall --cask pelagica
```

To also remove its settings and caches:

```sh
brew uninstall --zap --cask pelagica
```
