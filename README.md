# homebrew-tap

Homebrew tap for [gitwise](https://github.com/drzioner/gitwise) — Python CLI for optimized git workflows and coding agents integration.

## Install

```bash
brew install drzioner/tap/gitwise
```

Or equivalently:

```bash
brew tap drzioner/tap
brew install gitwise
```

## What it installs

- The `gitwise` command (entry point of the [`gitwise-cli`](https://pypi.org/project/gitwise-cli/) Python package).
- An isolated Python virtualenv under Homebrew's `libexec` (PEP 668-safe — no `pip install --break-system-packages` shenanigans).
- Runtime dependencies (`rich`, `rich-argparse`, `shtab`) vendored as Homebrew resources.

## Update

```bash
brew upgrade gitwise
```

The formula tracks PyPI; new versions of `gitwise-cli` are picked up when this tap is updated (`brew update`).

## Uninstall

```bash
brew uninstall gitwise
```

## Verify the install

```bash
gitwise --version
gitwise doctor
```

## Troubleshooting

If `brew install` fails on the Python build:

- Ensure Xcode CLT is up to date: `xcode-select --install`.
- `brew update && brew upgrade python@3.12`.
- `brew doctor` for general environment issues.

## Sources

- Upstream: https://github.com/drzioner/gitwise
- PyPI: https://pypi.org/project/gitwise-cli/
- Report tap issues: https://github.com/drzioner/homebrew-tap/issues
- Report gitwise bugs: https://github.com/drzioner/gitwise/issues
