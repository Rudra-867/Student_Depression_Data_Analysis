USE  [tableau project_1]

select Gender,count(*) from [dbo]. [Depression+Student+Dataset]
group by Gender

update [dbo].[Depression+Student+Dataset]
set gender='f' where gender='female'
update [dbo].[Depression+Student+Dataset]
set gender='m' where gender='male'

select * from [dbo].[Depression+Student+Dataset]
where gender is null

select * from [dbo].[Depression+Student+Dataset]
where gender = ''

select * from [dbo].[Depression+Student+Dataset]