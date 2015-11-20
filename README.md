OSX
===

Detects if OS X programs are installed, for files ending in `app`, `framework`, 
`prefpane`, `service`, `workflow`, `qlgenerator`, `safariextz`, `fxplug`, `moef`.  

Intended for use in shell scripts to guard against installing applications and 
plugins that are already present on the system.  

This is a simple wrapper around the `find` and `mdfind` commands with a limited 
number of search directories.  Which directories are searched is dependent upon 
the file extension provided. Without a file extension, `osx` instead searches
the user's `$PATH` for a matching shell command.

There is no output; it simply returns an exit code 1 if the filename is not found. 
For example:  

`osx wget || brew install wget`  
`osx MacVim.app || brew cask install macvim`    
`osx Google Chrome.app || app ~/Downloads/googlechrome.dmg`      
`osx Amphetamine || app amphetamine/id937984704` 

Install
-------
Open a terminal and run this command:  

`curl https://raw.githubusercontent.com/suderman/osx/master/install.sh | sh`

### Or, clone the repo
Download and copy `osx` somewhere in your path, ie: 

`git clone https://github.com/suderman/osx.git`  
`cp osx/osx /usr/local/bin`  

Options
-------
To improve performance and avoid false collisions, `osx` doesn't bother to search 
`/System/Library`. You can include this directory by passing the `-s` option:

`osx -s Finder.app && echo "Finder exists! (duh)"`   

See Also
--------
- [Homebrew](http://brew.sh/)  
- [Homebrew Cask](http://caskroom.io/)  
- [app (OS X installer)](https://github.com/suderman/app)  
