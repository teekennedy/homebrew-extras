# Teekennedy Extras

Repo for syncing my customized formulae across devices.
Feel free to use, but don't expect support as these are temporary.

# Casks

## Godot 4.0 RC1

Prerelease version of Godot based on the official cask. No checksum, and livecheck support is broken.

Install: `brew install --cask teekennedy/extras/godot`

## OrcaSlicer 2.1.0-beta

Prerelease version of OrcaSlicer that has reduced purge support ported from bambuslicer. Couldn't wait for it to be released as stable.

Added a checksum for arm.

Install: `brew install --cask teekennedy/extras/orcaslicer`

## RMIR (RemoteMaster) 3.0.15

Latest stable version of RemoteMaster at time of writing.

# Developing a new Cask

Change to the directory of your checked out tap, in this case `$(brew --prefix)/Library/Taps/teekennedy/homebrew-extras`.

Create the initial contents of the new cask by following along in the [Cask Cookbook](https://docs.brew.sh/Cask-Cookbook#stanza-app).

To test install, run `export HOMEBREW_NO_INSTALL_FROM_API` to install from locally edited cask. Then run `brew install --keep-tmp --verbose --debug CASK_NAME`

Once it's working as expected, commit and push the changes.
