--Tumbling, Hopping, Sliding, and Session windows. 
create table chemicals(Id Bigint,Name Nvarchar(max),FullName Nvarchar(max));

CREATE TABLE DeviceTemporal 
   (  
      [DeviceId] int NOT NULL PRIMARY KEY CLUSTERED 
      , [GroupDeviceId] nvarchar(100) NOT NULL
      , [Description] nvarchar(100) NOT NULL 
      , [ValidFrom] datetime2 (0) GENERATED ALWAYS AS ROW START
      , [ValidTo] datetime2 (0) GENERATED ALWAYS AS ROW END
      , PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo)
   )  
   WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.DeviceHistory));  -- DeviceHistory table will be used in Delta query

   SELECT DeviceId, GroupDeviceId, [Description]
   FROM dbo.DeviceTemporal
   FOR SYSTEM_TIME AS OF @snapshotTime

   SELECT DeviceId, GroupDeviceId, Description, 1 as _operation_
   FROM dbo.DeviceTemporal
   WHERE ValidFrom BETWEEN @deltaStartTime AND @deltaEndTime   -- records inserted
   UNION
   SELECT DeviceId, GroupDeviceId, Description, 2 as _operation_
   FROM dbo.DeviceHistory   -- table we created in step 1
   WHERE ValidTo BETWEEN @deltaStartTime AND @deltaEndTime     -- record deleted

SELECT
	Make, Time
INTO Output
FROM Input

SELECT
	Make,
	COUNT(*) AS Count
FROM
	Input TIMESTAMP BY Time
GROUP BY
	Make,
	TumblingWindow(second, 10)

SELECT
	Make
	CASE
		WHEN Make = "Make1" THEN "A"
		ELSE "B"
	END AS Dispatch_to_lane,
	System.TimeStamp() AS Time
FROM
	Input TIMESTAMP BY Time

SELECT
	Make,
	Time
FROM
	Input TIMESTAMP BY Time
WHERE
	LAG(Make, 1) OVER (LIMIT DURATION(minute, 1)) <> Make
