# Ubuntu: Change Screen Resolution via Shell Script

This shell script will change Ubuntu's screen resolution to the value defined inside the script. This will work even in cases where the wanted screen resolution does not show up under Ubuntu's Display Settings.

In order to configure the screen resolution that you want the shell script to apply, edit the file and change the resolution in line 3:

  RESOLUTION="2560 1440 60"

Say, you wanted a resolution of 1920x1080 with the same refresh rate of 60 Hz, you'd need to set line 3 to 

  RESOLUTION="1920 1080 60"
  
Apply new screen resolution by executing the shell script.
