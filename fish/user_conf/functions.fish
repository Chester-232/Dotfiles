for item in $fish_dir/long_functions/*
    if test -f $item
        source $item
    end
end

function cd
    z $argv
end

function gitCodes
    if sudo -v
        echo "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"
        echo "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" | wl-copy
        echo "Expires on Wed, Oct 2 2024"
    end
end

function fish_command_notifier --on-event fish_postexec
    # Get the focused window app_id
    set -l focused_class (hyprctl clients -j | jq -r '.[] | select(.focusHistoryID == 0) | .class')
    set -l terminal_app "kitty"  # replace with your terminal's app_id if different

    if test $focused_class != $terminal_app
        if test $status -eq 0
            notify-send --app-name=Kitty -i "kitty" "Command finished" "`$argv` completed successfully."
        else
            notify-send "Command finished" "`$argv` failed with status $status."
        end
    end
end
