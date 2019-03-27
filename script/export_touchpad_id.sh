# get touchpad id using regular expression
ID=$(xinput list | grep "TouchPad" | grep -oP 'id=\s*\K\d+')

export XINPUT_TOUCHPAD_ID=$ID
