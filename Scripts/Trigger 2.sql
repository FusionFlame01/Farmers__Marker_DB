CREATE TRIGGER deletePriceHistpry
ON produce_listings
AFTER DELETE
AS
BEGIN
	DELETE FROM price_history
	WHERE listing_id IN (SELECT listing_id FROM deleted)
END;