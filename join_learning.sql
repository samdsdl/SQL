SELECT *
from classicmodels.employees T1
LEFT JOIN classicmodels.customers T2
on T1.employeenumber = T2.salesRepEmployeeNumber
where t2.customernumber is null
and jobtitle = "Sales Rep";


/*question1*/
select 
A.customername, B.amount, B.paymentdate
from classicmodels.customers A
left join classicmodels.payments B
on A.customerNumber = B.customerNumber
where B.customernumber is null;

select 
B.contactfirstname,
B.contactLastName,
A.orderdate,
A.status
from classicmodels.orders A
right join classicmodels.customers B
on A.customerNumber = B.customerNumber
where A.ordernumber is null