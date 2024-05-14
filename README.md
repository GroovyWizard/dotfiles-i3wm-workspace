# Guide
<p> Just copy the dotfiles to each respective directory after installing the required packages mentioned in the .md file, after that copy and paste the st-patches stuff inside your ST install </p>
<p> PS: If you want startup scripts, just create a folder named Scripts inside your home (~/) and a file there called startup.sh (remeber to chmod +x it) </p>

# Hotkeys
1. Mod + Shift + S  = screenshot interactive (flameshot)
2. Shift + C = copy from terminal (st)
3. Shift + V = paste in terminal (st) 

# Why use this? 
- zsh with no powerlevel or omz bloat, but still keeping nice QOL plugins and useful PS1
- st with must have patches imo (just remove the ones you dont wnat from st-patches/patches folder)
- fancy polybar
- i3wm config with vim-like bindings
- vim with must have plugins for software development
- packages.md with everything that i use
- Everything tested and i use those configs everyday at my job, to study and even play games, so its not only fancy but functional and trustworthy 

# Simple Terminal
## Patch contents: 
- transparency
- clipboard support
- scroll with Shift + J/K (vim bindings)
- autocomplete

## Installation
1. Get the st base from cloning the git url here: https://st.suckless.org/
2. Copy the contents of the st-patches folder inside the directory where the st source files are located e.g `cp -R st-patches/* ./st`, then run `chmod +x patch.sh` and then ./patch.sh, this will auto patch


# Preview:

<details>
<summary>New i3 workspace</summary>
  
![image](https://github.com/GroovyWizard/dotfiles-i3wm-workspace/assets/78284549/9ef733de-bb32-4c26-9082-787f914bad38)

</details>

<details>
<summary>Terminal</summary>
  
![image](https://github.com/GroovyWizard/dotfiles-i3wm-workspace/assets/78284549/155bfabb-a41e-45d8-bdb3-1ef692ebf063)
</details>

<details>
<summary>PS1</summary>
  
(the git branch changes dinamically)

![image](https://github.com/GroovyWizard/dotfiles-i3wm-workspace/assets/78284549/c0f30926-fafb-4515-b14f-00f20bfbb2ff)
</details>

# Disclaimer:
The polybar config in this repo is based in a modified version of elementary-dark theme from this repo: https://github.com/adi1090x/polybar-themes
