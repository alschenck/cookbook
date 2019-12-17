
#Get user AD Groups
$user = $env:username #or specify
(New-Object System.DirectoryServices.DirectorySearcher("(&(objectCategory=User)(samAccountName=$($user)))")).FindOne().GetDirectoryEntry().memberOf
