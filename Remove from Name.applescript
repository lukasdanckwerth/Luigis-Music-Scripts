tell application "Music"
    if selection is not {} then

        set theMessage to "Please enter the String you want to remove from the name?"
        set theRemovemend to the text returned of (display dialog theMessage default answer "")

        repeat with aTrack in selection
            set theTrackName to the name of aTrack
            set ASTID to AppleScript's text item delimiters
            set AppleScript's text item delimiters to theRemovemend
            set theTrackName to text items of theTrackName
            set AppleScript's text item delimiters to ""
            set theTrackName to "" & theTrackName
            set AppleScript's text item delimiters to ASTID
            set name of aTrack to theTrackName
        end repeat
	else
		display dialog "No Tracks selected."
	end if
end tell

