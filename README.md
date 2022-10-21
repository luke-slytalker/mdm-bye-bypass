# mdm-bye-bypass
###bypass Apple MDM, update iOS, shouldn't have to worry about re-bypassing MDM after the update.###


Jailbreak the device with Checkra1n.  This will give you a shell on port 44 which you can setup a tunnel into.

In a new terminal window, run:  
`iproxy SOME_PORT 44`

In a 2nd terminal window, run:  
`ssh root@localhost -p 44`

Password:  alpine

This should drop you into a shell with root level permissions.

Since /var is writable, we're going to drop our script in there.
Make sure you're in the same folder as where you've saved the script & config (plist) files to & run the following:  
`scp -P SOME_PORT mdm-bye-bypass.sh`

Once the shell script uploads to the device, you'll need to update its permissions.
To do that, you'll need to run the following command in the terminal that you are connected to your device with (the one you ran SSH in):  
`chmod +x mdm-bye-bypass.sh`


Once that's done, it's time to run the script on the device:  
`./mdm-bye-bypass.sh`


Follow the prompts after that and everything should go smooth.

