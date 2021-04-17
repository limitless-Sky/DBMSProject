-- 1
set @tower='B';
select * from visitor where TempAccountNumber  in (

select Visitor_TempAccountNumber from visitor_has_resident where Resident_AccountNumber in (

select AccountNumber from resident where Tower=@tower
)
);

-- 2
  set @license :="DL4CY2341";

select PhoneNumber from phonenumbers where (UserType="visitor" and AccountNumber in (select AccountNumber from licensenumber where UserType="visitor" and LicenseNumber=@license)) 
or (UserType="resident" and AccountNumber in (select AccountNumber from licensenumber where UserType="resident" and LicenseNumber=@license))or 
(UserType="serviceProvider" and AccountNUmber in (select AccountNumber from licensenumber where UserType="serviceProvider" and LicenseNumber=@license));

-- 3 
set @startTime:='2021-04-02';
set @endTime:='2021-04-20';
set @totalStaff=30;
select * from announcement where `TimeStamp` between @startTime and @endTime and SecurityStaff_AccountID <= @totalStaff;

-- 4
set @profession="doctor";
set @tower='E';

select * from resident where Occupation=@profession and Tower=@tower;

-- 5 
select * from complaint where StaffResolutionStatus='F' and AccountType="serviceProvider" and AccountNumber in (

select ServiceProvider_AccountNumber from parking where UserType="serviceProvider" and VehicleType="2 wheeler"

);


-- 6
set @startTime:='2021-04-02';
set @endTime:='2021-04-25';

select * from announcement where `TimeStamp` between @startTime and @endTime and AnnouncementID in (

select ID from targetuser where QueryType="announcement" and TargetUser in ("visitor","service provider") 

);

-- 7
set @AccountNumber=7;
set @offsetvalue="23:00:00";

select @currentvalue:= AccountExpiryTimeStamp from visitor where TempAccountNumber=@AccountNumber;
set @updatedvalue=addtime(@currentvalue,-@offsetvalue);

update visitor 
set AccountExpiryTimeStamp= @updatedvalue where TempAccountNumber=@AccountNumber;

-- 8
set @complaintNumber=23;
set @newstatus='T';
update complaint
set StaffResolutionStatus=@newstatus 
where ComplaintID=@complaintNumber;

-- 9
set @offsett=-30;
set @previousDate=adddate(curdate(),@offsett);

select * from securitystaff where AccountID in (
	select SecurityStaff_AccountID from announcement where SecurityStaff_AccountID<30 and AnnouncementID in 
    (select ID from targetuser where QueryType='announcement' and TargetUser='resident') 
    and `TimeStamp`>=@previousDate
);

-- 10
set @offsett=-365;
set @criteria=adddate(curdate(),@offsett);
delete from complaint where StaffResolutionStatus='T' 
and ComplaintResolutionStatus='T' 
and `TimeStamp`<@criteria
and ComplaintID<50;


