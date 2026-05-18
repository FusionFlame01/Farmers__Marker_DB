CREATE LOGIN FarmerMarketApp WITH PASSWORD = 'FarmerMarketDB';

CREATE USER FarmerMarketUser FOR LOGIN FarmerMarketApp;

--Grant user premissions
GRANT SELECT ON dbo.vw_availableProduce TO FarmerMarketUser;

REVOKE SELECT ON vw_availableProduce FROM FarmerMarketUser;