zoxide init fish | source

#theme
set -x GTK_THEME Catppuccin-Mocha-BL

#SDL mixer
#set -x SDL_MIXER_LIBRARIES /usr/lib/
#set -x SDL_MIXER_INCLUDE_DIRS /usr/include/SDL2/

# Vulkan things
set -x VULKAN_SDK '/home/chester/vulkansdk/1.3.283.0/x86_64'
fish_add_path -a /'home/chester/vulkansdk/1.3.283.0/x86_64/bin'
set -x LD_LIBRARY_PATH '"$VULKAN_SDK/lib" $LD_LIBRARY_PATH'
set -x VK_ADD_LAYER_PATH '"$VULKAN_SDK/share/vulkan/explicit_layer.d" $VK_ADD_LAYER_PATH'

if set -q VK_LAYER_PATH;  # Check if VK_LAYER_PATH is set
    echo "Unsetting VK_LAYER_PATH environment variable for SDK usage"
    set -e VK_LAYER_PATH  # Unset VK_LAYER_PATH if it is set
end

# theming stuffs
set -x QT_QPA_PLATFORMTHEME qt6ct
set QT_STYLE_OVERRIDE Catppuccin-Mocha-BL

set -x QT_WAYLAND_DISABLE_WINDOWDECORATION 1
set -x GDK_BACKEND wayland

set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes

set -x CMAKE_GENERATOR Ninja

#set go path and binaries
set -x GOPATH "/home/chester/go"

set -x PATH $PATH $GOPATH/bin

set -x DOTNET_CLI_TELEMETRY_OPTOUT 1

set -x PATH $PATH /home/chester/.scripts
set -x PATH $PATH /home/chester/.scripts/platform-tools
