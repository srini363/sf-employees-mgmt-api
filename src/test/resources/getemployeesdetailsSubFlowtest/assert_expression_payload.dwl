%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "identification": {
    "firstName": "salesforce1",
    "lastName": "Vasan",
    "dob": "02/21/1980",
    "gender": "M",
    "title": "Manager"
  },
  "address": [
    {
      "type": "home",
      "number": 1233,
      "street": "blah blah St",
      "unit": "1 a",
      "city": "Somewhere",
      "state": "WV",
      "zipcode": "12345"
    },
    {
      "type": "home1",
      "number": 12,
      "street": "blah blah St1",
      "unit": "1 a",
      "city": "Somewhere",
      "state": "WV",
      "zipcode": "123451"
    }
  ]
})