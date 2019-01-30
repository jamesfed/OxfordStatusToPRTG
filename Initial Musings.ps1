$result = Invoke-RestMethod -Method Get -Uri https://status.ox.ac.uk/api/services.json

$result.groups[0].services

$grandresult = foreach($service in $result.groups){
    $service.services
}

$grandresult.Count

$result.groups

$result | ConvertTo-Json

{
    "prtg": {
      "result": [
        {
          "channel": "Mail and Phones" ,
          "value": $.groups[0].status_name
        },
      ]
    }
  }