%dw 2.0
output application/json  skipNullOn="everywhere"
---
 [{
 	employee_Id__c: payload.employeeId as String default null,
    FirstName__c:payload.Employee.FirstName  as String default null  ,
    LastName__c:payload.Employee.LastName  as String default null  ,
    DOB__c:payload.Employee.DOB  as String default null  ,
    Gender__c:payload.Employee.Gender  as String default null  ,
    Title__c:payload.Employee.Title  as String default null  ,
    type__c:payload.Address."type"  as String default null  ,
    number__c:payload.Address.number  as String default null  ,
    street__c:payload.Address.street  as String default null  ,
    Unit__c:payload.Address.Unit  as String default null  ,
    City__c:payload.Address.City  as String default null  ,
    State__c:payload.Address.State  as String default null  ,
    zipcode__c:payload.Address.zipcode  as String default null 
}]