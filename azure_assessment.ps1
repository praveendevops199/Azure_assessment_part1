
#Create an `n` number of resource groups with the their names formatted as
 #“my- test-candidate-<location>” where <location> comes from a variable called `locations`
  #which is a list of strings (e.g. ["eastus", "westus"]).


Connect -AzureRMAccount
$location - Get -AzureRMLocation | select location
$location - $location.location
foreach($locations in $location)
{
    New-AzureRMResourceGroup -Resourcegroup "my-tests-canditate-$locations" -location $locations
}