# Bastion

Purpose is to come up with repeatable scripts that can ne used
whenever we need / want to recreate our bastion vm

## First Steps

This repo is expected to be pulled onto a freshly installed minimal
install of arch linux. Ensure git is available.

Clone the repo:
`git clone https://github.com/dmonline.uk/bastion`

## Use of repo

The scripts can be run individually, or as a batch. Note these wrappers:

* runme - this will run all scripts with the extension '.sh' in alpha-numeric order
* runme_test - this will print out the scripts without running them

Any scripts can be removed from the batch process by having the extension renamed.
Any _other_ extension will do, but '.txt' is chosen.

Any script can be 'sourced' manually:

* `source 10_run_first.sh`
or
* `. 25_ignored.txt`


