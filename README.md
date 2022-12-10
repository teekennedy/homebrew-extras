# Teekennedy Extras

Repo for syncing my customized formulae across devices.
Created for personal use.

## Colima with virtualization.framework support

As of 2022-12-10, the latest released version of Colima doesn't sync volumes properly on M1 devices
(see abiosoft/colima#500).
There's an in-progress feature branch with support for macOS virtualization.framework that fixes the issue.
I'm too impatient to wait for release so I created the `colima-vz` formula to track the feature branch.

If you already have colima installed, run `colima delete` to remove the existing qemu image,
and `brew unlink colima` to prevent conflicts with colima.

To install, run `brew install teekennedy/extras/colima-vz`.
Pass the `--HEAD` option for the latest commit on the [support-vz branch].
If you already have a colima configuration, run `colima start --edit`
and change `mountType` to `virtiofs` to update the volume mount driver.

[support-vz branch]: https://github.com/abiosoft/colima/commits/support-vz
