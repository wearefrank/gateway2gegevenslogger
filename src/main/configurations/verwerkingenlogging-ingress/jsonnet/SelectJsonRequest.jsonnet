{ 
  [ if k != "response" then k else null ] : payload[0][k]
    for k in std.objectFields(payload[0]) 
} +
{ 
  "response": {
      [ if k != "body" then k else null ] : payload[0].response[k]
      for k in std.objectFields(payload[0].response) 
    },
  "body": std.parseJson(payload[0].response.body)
}
