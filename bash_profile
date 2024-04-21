# ~/.bash_profile
# Check if we are on a virtual terminal 1 and if DISPLAY is not set
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  # Set environment variables for Wayland session
  export GTK_IM_MODULE=ibus
  export XMODIFIERS="@im=dbus"
  export QT_IM_MODULE=ibus
  export QT_QPA_PLATFORMTHEME=qt6ct
  export ELECTRON_OZONE_PLATFORM_HINT=wayland
  export XDG_SESSION_TYPE=wayland
  export QT_QPA_PLATFORM=wayland-egl
  export ELECTRON_ENABLE_LOGGING=true
  export ELECTRON_FLAGS="--enable-features=UseOzonePlatform --enable-gpu --ozone-platform=wayland"
  export JAVA_HOME=$HOME/Android/java/jdk
  export HISTCONTROL=ignoreboth:erasedups
  export _JAVA_AWT_WM_NONREPARENTING=1
  export STUDIO_JDK=$HOME/Android/studio/jdk

  # Start your Wayland session here, if that's what you intend.
  exec Hyprland
fi

# Ensure this block is outside any conditional expression
# Source .bashrc if it exists
if [[ -f ~/.bashrc ]]; then
  . ~/.bashrc
fi