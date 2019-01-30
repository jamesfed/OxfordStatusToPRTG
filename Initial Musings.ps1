$result = Invoke-RestMethod -Method Get -Uri https://status.ox.ac.uk/api/services.json

$result.groups[0].services

$grandresult = foreach($service in $result.groups){
    $service.services
}

$grandresult.Count