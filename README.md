# thedumsieffect/homebrew-tap

Homebrew tap for [FullMark](https://github.com/thedumsieffect/fullmark) — a Notion-style markdown editor on plain `.md` files.

## Install

```bash
brew install --cask --no-quarantine thedumsieffect/tap/fullmark
```

`--no-quarantine` skips the macOS first-launch Gatekeeper dialog (FullMark is open-source but not yet Apple-notarized). If you'd rather not pass that flag, drop it — you'll get a one-time dialog asking to confirm the launch.

If you find yourself doing this a lot:

```bash
echo 'export HOMEBREW_CASK_OPTS="--no-quarantine"' >> ~/.zshrc
```

…and brew will default to `--no-quarantine` for every cask install going forward.

## Update

```bash
brew upgrade --cask fullmark
```

## Uninstall

```bash
brew uninstall --cask fullmark
brew untap thedumsieffect/tap
```

(`brew uninstall --zap --cask fullmark` also wipes settings.)
