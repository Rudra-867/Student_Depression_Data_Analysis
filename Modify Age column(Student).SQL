
--- Modifying Age column and Add Age_group column


use  [tableau project_1]

select age,count(*) [count] from [dbo].[Depression+Student+Dataset]
group by age
order by age desc

alter table [dbo].[Depression+Student+Dataset]
add  Age_group varchar(max)

select * from [dbo].[Depression+Student+Dataset]


update [dbo].[Depression+Student+Dataset]
set age_group=
case when age between 26 and 34 then 'A1'
else case when age between 20 and 25 then 'A2'
else 'A3' end end

select Age_group,count(*) [count] from [dbo].[Depression+Student+Dataset]
group by Age_group

