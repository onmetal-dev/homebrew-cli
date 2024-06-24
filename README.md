# homebrew-metal
A Hombrew tap that supplies formulae for installing Metal's CLI and others.

# Installation
- For installing the CLI (which provides the `metal` command in your terminal):
```bash
brew install onmetal-dev/tap/cli
```

# Installing other versions apart from the latest
```bash
brew install --overwrite onmetal-dev/tap/cli@SOME_VERSION
```

# Uninstallation
```bash
brew list | grep cli
# You may need to run the below multiple times with different versions of the CLI that the above outputs e.g. cli, cli@0.0.1-alpha-9_18 etc.
brew uninstall cli
brew untap onmetal-dev/tap
rm -rf /usr/local/bin/metal
```
