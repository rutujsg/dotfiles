# MacOS Mojave like - i3wm rice

![i3](/assets/ss1.png)
![rofi](/assets/ss2.png)

### Blur on context menus!

![context-menu](/assets/ss3.png)


# Dependecies
## check for updates
~~~ sh
    sudo pacman -Syu
~~~
## Basic dependencies

~~~ sh
    sudo pacman -S          \ 
    i3-gaps                 \ 
    feh                     \ 
    maim                    \ 
    termite                 \ 
    i3lock                  \ 
    rofi                    \ 
    git  --needed
~~~




From AUR ( I use [yay](https://github.com/Jguer/yay) to manage aur packages )
~~~ sh
    yay -S polybar compton-tryone-git
~~~
Compton tryone also can be found [here](https://github.com/tryone144/compton)


## Fonts
~~~sh
  sudo pacman -S cantarell-fonts
~~~ 

~~~ sh
    yay -S nerd-fonts-complete ttf-weather-icons
~~~


# Configuring
### ( working on installer )

### to view icons/glyphs, check this link: https://bluejamesbond.github.io/CharacterMap/

Clone this repo
~~~ sh
    git clone "https://github.com/ViniciusOTeles/dotfiles.git" &&
    cd dotfiles
~~~

+ ##  I3WM
    ~~~ sh
        cd i3wm
        cp *  ~/.config/i3/
    ~~~
+ ## Polybar
    ~~~ sh
        cd polybar
    ~~~
    ---
    If you <b>dont have</b> a polybar scripts folder, clone it and move the scripts to your user home folder
    ~~~ sh
        git clone "https://github.com/x70b1/polybar-scripts.git" &&
        mv polybar-scripts/polybar-scripts/ ~/polybar-scripts/;
    ~~~
    For the weather widget, check [this link](https://github.com/x70b1/polybar-scripts/tree/master/polybar-scripts/openweathermap-detailed)
    
    I made some changes in this specific script. I removed the details from weather

    ---
    Finally, copy the configuration to your polybar folder
    ~~~ sh
        mkdir ~/.config/polybar -p;
        cp *  ~/.config/polybar/
    ~~~
    Use `mod+shift+r` to reload the configuration

    ---
    For additional customizations follow this link: https://github.com/jaagr/polybar/wiki

+ ## Termite
    ~~~ sh
        mkdir ~/.config/termite -p
        cd termite
        cp *  ~/.config/termite 
    ~~~

+  ## Compton
    The compton config i used is [here](https://gitlab.riksolo.com/riksolo/dotfiles/blob/master/.config/compton.conf)

    move the file to ~/.config/compton/

    ~~~sh
      mkdir ~/.config/compton -p
      cp path/to/compton/config_file ~/.config/compton/compton.conf
    ~~~
+ ## Rofi
    ~~~sh
      mkdir ~/.config/rofi -p
      cd rofi
      cp *  ~/.config/rofi/
    ~~~