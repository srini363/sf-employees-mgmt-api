%dw 2.0
output application/java
---
payload.address map {
	Unique_Id__c : uuid(),
	Type__c : $."type",
	Number__c : $."number",
	Street__c : $.street,
	Unit__c : $.unit,
	City__c : $.city,
	State__c : $.state,
	Zipcode__c : $.zipcode,
	Name : vars.sfEmployeeCreateResponse.items[0].id
}