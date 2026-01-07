# copied from ament_package/template/prefix_level/setup.fish

set -gx AMENT_SHELL fish

# source setup.fish from same directory as this file
set -gx AMENT_CURRENT_PREFIX (builtin cd (dirname (status filename)) && pwd)
# trace output
if test -n "$AMENT_TRACE_SETUP_FILES"
  echo "# source \"$AMENT_CURRENT_PREFIX/setup.fish\""
end
source "$AMENT_CURRENT_PREFIX/setup.fish"
