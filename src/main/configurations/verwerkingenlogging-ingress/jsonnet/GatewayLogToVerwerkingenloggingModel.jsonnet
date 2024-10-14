{
  "actieNaam": "string",
  "handelingNaam": "string",
  "verwerkingNaam": "string",
  "verwerkingId": "fdffc2a6-651e-40f1-8420-0b4ccd9b34b6",
  "verwerkingsactiviteitId": payload.body.results[0].verwerker_taak_id,
  "verwerkingsactiviteitUrl": payload.body.results[0].verwerker_taak_id,
  "vertrouwelijkheid": "normaal",
  "bewaartermijn": "string",
  "uitvoerder": payload.consumer.username,
  "systeem": payload.service_id,
  "gebruiker": payload.consumer.username,
  "gegevensbron": payload.body.results[0].extraData.leverancier,
  "soortAfnemerId": "string",
  "afnemerId": "asd",
  "verwerkingsactiviteitIdAfnemer": payload.body.results[0].verwerker_taak_id,
  "verwerkingsactiviteitUrlAfnemer": payload.body.results[0].verwerker_taak_id,
  "verwerkingIdAfnemer": "39d3960b-292d-4baf-ae34-0dcf3b53f540",
  "tijdstip": payload.response.headers.date,
  "verwerkteObjecten": [
    {
      "objecttype": betrokkene.betrokkeneType,
      "soortObjectId": "inpBsn",
      "objectId": betrokkene.embedded.betrokkene.inpBsn,
      "betrokkenheid": false,
      "verwerkteSoortenGegevens": [
        {
          "soortGegeven": key
        } for key in std.objectFields(betrokkene.embedded.betrokkene)
      ]
    } for betrokkene in payload.body.results[0].embedded.betrokkenen
  ]
}
