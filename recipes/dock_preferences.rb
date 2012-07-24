pivotal_workstation_defaults "set dock to be on left" do
  plist "com.apple.dock"
  key "orientation"
  string "left"
end

pivotal_workstation_defaults "set dock to autohide" do
  plist "com.apple.dock"
  key "autohide"
  boolean true
end

execute "relaunch dock" do
  command "killall Dock"
end
