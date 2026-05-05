CREATE PROCEDURE usp_AddListings
	@farmer_id INT,
	@product_name VARCHAR(200),
	@category_id INT,
	@price_per_kg DECIMAL(10,2),
	@quantity_kg DECIMAL(10,2),
	@harvest_date DATE,
	@description VARCHAR(500)
AS
BEGIN
	 IF(@quantity_kg > 1 and @price_per_kg > 1)
	 BEGIN
		PRINT 'Quantity and price cannot be less than 1'
	 END;
	 		INSERT INTO produce_listings
		(farmer_id, product_name, category_id, price_per_kg, quantity_kg, harvest_date, description)
		VALUES
		(@farmer_id, @product_name, @category_id, @price_per_kg, @quantity_kg, @harvest_date, @description)
		SELECT SCOPE_IDENTITY() AS NewProductID;
END;

CREATE VIEW vw_availableProduce
AS
SELECT p.listing_id, p.product_name, f.farm_name, c.category_name, 
p.is_available, p.price_per_kg, p.description
FROM produce_listings p
JOIN farmers f ON f.farmer_id = p.farmer_id
JOIN categories c ON c.category_id = p.category_id
WHERE p.is_available = 1;
