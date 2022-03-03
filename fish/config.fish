# Disable greeting by fish shell
set fish_greeting


if status is-interactive
    # Commands to run in interactive sessions can go here
end


# Add flatpak exports to PATH
set -l xdg_data_home $XDG_DATA_HOME ~/.local/share
set -gx --path XDG_DATA_DIRS $xdg_data_home[1]/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share

for flatpakdir in ~/.local/share/flatpak/exports/bin /var/lib/flatpak/exports/bin
    if test -d $flatpakdir
        contains $flatpakdir $PATH; or set -a PATH $flatpakdir
    end
end

# Append local bin folder to PATH
set -a PATH ~/.local/bin

# Refresh Pywall colors on shell on running fish


# Include all aliases
[ -f ~/.config/fish/aliases.fish ] && source ~/.config/fish/aliases.fish
