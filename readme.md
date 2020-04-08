# DCS VEAF user mods

Dedicated topic on VEAF forum : https://community.veaf.org/topic/303/ovgme-veaf-user-file-mods

## How to use this script

You need to create **remoterepository.ftp** from **remoterepository.ftp.exemple** basis in order to push OvGME mods on dedicated remote repository.

[Download](https://www.7-zip.org/download.html) 7za.exe (in 7-Zip Extra: standalone console version, 7z DLL, Plugin for Far Manager package), install it, and either add it to your PATH, or copy it in the root of this repository.

For VEAF user, contact a VEAF admin in order to get credentials.

## How to update a mod

### Buildable mods

Some mods that have multiple versions (e.g. one skin for each defined pilot) are stored in a more efficient way and need to be built before deployment.

These mods have a *build.cmd* script in their main folder, that's how you'll know that they're buildable.

Simply run the *build.cmd* script in the mod folder, it will create a temporary "_XXX" folder to be used by the deployment script (see below)


### Flat mods

For mods that are not buildable, the procedure is different.

Replace the first character of repository name "**x**" by "**_**" character.
It will tell the script this mod has to be repackaged and send to dedicated remote repository.

Apply modification to this mod.

### Deploy (for all mods)

Execute the script.
This one will automaticaly replace "**_**" by "**x**".

## How to add a mod

*To come*
