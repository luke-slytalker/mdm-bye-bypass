# iOS MDM bypass script
# LukeSlytalker
# Twitter:  @_Luke_Slytalker
# TruthSoc:  @LukeSlytalker
#

echo "*--== MDM Bye-Bypasser Script ==--*"
echo "*--==   by:  Luke Slytalker   ==--*"
echo " "
echo "Starting bypass..."
# get up to the root level directory
cd ../../../../../../../../../

# move into the Conmfiguration Profiles directory
cd /var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/Library/ConfigurationProfiles/

# verify we're there
echo "Current Directory:  "; pwd

# rename the PLIST file
mv CloudConfigurationDetails.plist CloudConfigurationDetails.plist.BAK

# rename the PLIST file
mv CloudConfigurationSetAsideDetails.plist CloudConfigurationSetAsideDetails.plist.BAK

echo "Configuration files renamed."
echo "Replacing with patched versions..."

##### upload modified config files here #####

echo "In a new Terminal, run command:"
echo " scp -P PORT CloudConfigurationDetails.plist root@localhost:/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/Library/ConfigurationProfiles/"
echo " scp -P PORT CloudConfigurationSetAsideDetails.plist root@localhost:/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/Library/ConfigurationProfiles/"
echo ""
echo "Once you've done that, come back to this window and type:  r"

while read -r -n 1 key
do
if [[ $key = r ]] ; then
   break;
fi
done
echo "\n\n"
echo "---------------------------"
echo "Clearing UI Cache... (this will take a moment)"

uicache --all
wait

echo "Restarting SpringBoard / Backboardd..."
killall backboardd
wait

echo "Finished."

echo "   ---------- FINISHED ----------"
echo "   Click through the setup screens to complete. \n\n"
echo ""
