# note

note is a command line utility for Mac, built on top of https://github.com/julienXX/terminal-notifier.

`note` wraps a command with a desktop notification upon completion.

## Screenshots

![Screenshot](https://dl.dropboxusercontent.com/s/6dzmwrdi4020ovh/note-screenshot.png?v=1)

## Installation
First, install terminal-notifier.
```
gem install terminal-notifier
```

Next, clone this repository and run the install script.
```sh
git clone https://github.com/stevenhao/note/
cd note
./install.sh
```

To test your installation, run `note sleep 1`. You should receive an alert when the command completes.

## Examples
### You can use `note` with ...

A long running command: 
- `note git clone https://github.com/fivethirtyeight/data.git`
- `note brew install coreutils moreutils findutils `
- `note gulp`

A build system that "watch"es your file system:
- `nodemon -w src -x note gulp` (instead of `gulp watch`)
- `when-changed -r src note npm run build` ([when-changed](https://github.com/joh/when-changed))
