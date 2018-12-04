
select distinct
c.RecID
,c.TransactionDate
,c.TransDateInt
,c.BranchPlant
,b.WorkCenter
,b.OpSeq
,b.ShortItem
,b.PartNumber
,b.UoM
,b.Routing
,b.TimeBasis
,b.CrewSize
,b.RunMach
,b.RunLab
,b.SetUp
,(b.RunMach+RunLab)*b.TimeBasis*b.CrewSize as MachLab_ext
,c.WorkOrder
,c.DocNumber
,c.DocType
,c.OrderType
,c.IMSRP5
,c.UnitCost
,c.ExtendedCost
,c.Quantity as LineQuantity
,c.Quantity*(b.RunMach+RunLab)*b.TimeBasis*b.CrewSize as LineTime
from vFIN_Cardex c left join vFIN_BaseFile b on b.BranchPlant=c.BranchPlant and b.ShortItem=c.ShortItem


