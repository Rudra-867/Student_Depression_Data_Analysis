

use [tableau project_1] 

select * from [dbo].[Depression+Student+Dataset]

alter table [Depression+Student+Dataset]
add index_column int identity(1,1)


update [Depression+Student+Dataset]
set Depression ='No' where Depression =0   
----First Time It Throungh An error beacuse of Its Datatype. So We have to change the datatype First.

alter table [Depression+Student+Dataset]
alter column depression varchar(max)

update [Depression+Student+Dataset]
set Depression ='yes' where Depression = '1'

select * from [Depression+Student+Dataset]
