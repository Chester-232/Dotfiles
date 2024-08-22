set -l fish_dir /home/chester/.config/fish/user_conf
set -U theme_color_scheme dracula
set -U fish_prompt_pwd_dir_length 0

source $fish_dir/aliases.fish
source $fish_dir/variables.fish
source $fish_dir/functions.fish

#run rclone to mount google drive
#rclone mount Gdrive: /home/chester/Google_Drive

function fish_greeting
    fastfetch
end
fish_add_path /home/chester/.spicetify
