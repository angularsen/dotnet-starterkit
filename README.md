# dotnet-starterkit
The purpose of this repo is to hold some scripts and files for bootstrapping a new .NET Core project. The goal is to have a consistent setup for projects where all you need to get started is to run:

```batch
init
build
run
```

## Run tests
Easily run tests from command-line or double-clicking `test.bat`.
```batch
test
```

## Configuration and shared settings
There are three files that can help configure Git and your text editors to work better together.

### .editorconfig
Share settings across team for encoding, indentation style and language specific rules.

### .gitignore
Ignore files specific to .NET development.

### .gitattributes
Configure end-of-line and how git should diff certain file types it may be confused about.


## Scripts in Build folder
Since running powershell scripts is awkward out of the box in Windows due to strict execution policies and no double-click to run behavior, these scripts are moved into `Build` folder.

Instead, the most-used scripts are exposed with `.bat` files in the root for easy access.

## Build server
Arguably a best practice, instead of using custom tooling on your build server such as TeamCity or VSTS to build and run tests, it can be a good idea to run the exact same scripts as you run locally to avoid any differences in command parameters.

If you love debugging why a build or test case fails only on the build server, but Works On My Machine (tm) ¯\_(ツ)_/¯, then you can freely disregard this advice.
