# .Dotfiles
This is my .dotfiles folder. I intend to use it on my development machines (mostly mac and ubuntu), but it would be interesting to see if parts of it would be useful on windows. Please note that it is my first attempt at this, so cut me some slack if you feel like criticizing. Also, keep in mind that the tools and settings that I use, might not be the best choice for others. Having said that, feel free to check out my settings in case you find something useful, or get a hint or idea.

## [License][lic]
I am publishing this under the MIT [license][lic], as i find it to be quite appropriate for public domain use.

## Installation.
I use https://github.com/anishathalye/dotbot to handle installation of my dotfiles on new machines.

### Adding files/folders with dotadd.
I built my own ```dotadd``` script in ruby, to add new dot files or folders. You can call it with one or more dotfiles as parameters.

#### dotadd's Expectations.
It expects the files/folders to be somewhere in the ~ folder hierarchy.
The dotfiles folder should be the ~/.dotfiles folder. Actually I used the https://github.com/Aviator45003/init-dotfiles script to build my initial .dotfiles folder and then used my dotadd script for the rest of the configuration files that init-dotfiles did not handle. I suppose I could modify init-dotfiles each time I want to add a new configuration file, but I had to help myself with some ruby.

#### dotadd's actions
Dotadd moves the files/folders specified as parameters, in the .dotfiles folder. If their name begins with a '.', it is removed. It then, creates a symbolic link to the new file/folder, in the original position, with the original name. For example, ```dotadd .atom``` should move .atom in ```~/.dotfiles/atom``` and create ```.atom``` symbolic link in ```~```. It also adds an entry in ```.dotfiles/install.conf.yaml```, (the default dotbot configuration file), with the required details.

[lic]: http://mtsagias.mit-license.org/
