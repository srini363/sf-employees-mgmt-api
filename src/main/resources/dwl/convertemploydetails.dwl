%dw 2.0
output application/json
---
{
	    "Employee": {
       "Firstname": payload.FirstName__c[0] as String default null ,
        "LastName": payload.LastName__c reduce $$ as String default null,
        "DOB": payload.DOB__c reduce $$ as String default null,
        "Gender": payload.Gender__c reduce $$ as String default null,
        "Title": payload.Title__c reduce $$ as String default null
    },
    "Address": 
        {
            "type": payload.type__c reduce $$ as String default null,
            "number": payload.number__c reduce $$ as String default null,
            "street": payload.street__c reduce $$ as String default null,
            "Unit": payload.Unit__c reduce $$ as String default null,
            "City":payload.City__c reduce $$ as String default null,
            "State": payload.State__c reduce $$ as String default null,
            "zipcode": payload.zipcode__c reduce $$ as String default null
        }
    
}