# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/my"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "my"; then

  # Create a new window inline within session layout definition.
  new_window "workspace"
  split_v 50
  run_cmd "cd ~/work/workflow-vips" 1
  run_cmd "sudo grunt vipserver" 1
  run_cmd "cd ~/work/workflow-vips" 2
  select_pane 1

  new_window "pure"
  split_v 50
  run_cmd "cd /home/hulufei/Dropbox/Projects/pure-bootstrap" 1
  run_cmd "grunt watch" 1
  run_cmd "cd /home/hulufei/Dropbox/Projects/pure-bootstrap" 2
  select_pane 2

  # Load a defined window layout.
  #load_window "example"

  # Select the default active window on session creation.
  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
