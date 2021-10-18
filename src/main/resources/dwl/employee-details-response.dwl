%dw 2.0
output application/json
fun dateCoversion (dateValue) = if (not (isEmpty(dateValue))) dateValue as Date {format : "yyyy-MM-dd"} as String {format : "MM/dd/yyyy"} else null
---
{
	"identification": {
		"firstName": vars.sfEmployeeResponse[0].FirstName__c,
		"lastName": vars.sfEmployeeResponse[0].LastName__c,
		"dob": dateCoversion(vars.sfEmployeeResponse[0].DOB__c),
		"gender": vars.sfEmployeeResponse[0].Gender__c,
		"title": vars.sfEmployeeResponse[0].Title__c
	},
	("address": (vars.sfAddressResponse default [] map {
		"type": $.Type__c,
		"number": if ( not (isEmpty($.Number__c)) ) floor($.Number__c) else 0,
		"street": $.Street__c,
		"unit": $.Unit__c,
		"city": $.City__c,
		"state": $.State__c,
		"zipcode": $.Zipcode__c
	})) if (not (isEmpty(vars.sfAddressResponse)))
}