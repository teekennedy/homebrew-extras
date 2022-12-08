# Teekennedy Extras

Repo for syncing my customized formulae across devices. Feel free to use, but don't expect much in terms of support.

## Colima with virtualization.framework support

As of 2022-12-08 the latest released version of Colima doesn't sync volumes properly on M1 devices
(see abiosoft/colima#500). There's a current in-progress feature branch that has support for macOS
virtualization.framework that appears to fix the issue. I'm too impatient to wait for release so I
created `colima-vz` to track the feature branch.

To install, run `brew install teekennedy/extras/colima-vz`. Add the `--HEAD` option to use the
latest and greatest commit. If you already have a colima configuration, run `colima start --edit`
and change `mountType` to `virtiofs` to update the volume mount driver.
