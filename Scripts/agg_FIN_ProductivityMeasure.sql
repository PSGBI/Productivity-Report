

select * from
(
select
month(p.TransactionDate) as RepMonth
,year(p.TransactionDate) as RepYear
,d.DepartmentDesc
,sum(p.LineTime) as TotalTime

from vFIN_Productivity_WorkCenter p left join 
			dim_ReportingWorkCenters w on w.WorkCenterNum=p.WorkCenter left join
				dim_ReportingDepartments d on d.DepartmentID=w.DepartmentID left join 
					dim_ReportingGroups g on g.GroupID=d.GroupID

group by 
month(p.TransactionDate) 
,year(p.TransactionDate) 
,d.DepartmentDesc
) x where x.RepMonth=1 and RepYear=2018