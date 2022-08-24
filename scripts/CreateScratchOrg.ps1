echo "Create Scratch Org"
sfdx force:org:create -a HelloWorld -f ../sfdx-js/config/project-scratch-def.json --setdefaultusername

echo "Set lightning debug mode and visualforce dev mode"
sfdx force:apex:execute -f ../sfdx-js/scripts/setDebugModes.apex

echo "Assign permission set if present"
sfdx force:user:permset:assign -n HelloWorldSet 
