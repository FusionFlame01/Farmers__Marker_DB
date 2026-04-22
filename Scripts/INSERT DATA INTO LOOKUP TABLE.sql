--CLEAR RECORDS
DELETE FROM provinces;
DELETE FROM categories;

--Insert provinces data
INSERT INTO provinces (province_name) VALUES ('Gauteng');
INSERT INTO provinces (province_name) VALUES ('Western Cape');
INSERT INTO provinces (province_name) VALUES ('Kwazulu-Natal');
INSERT INTO provinces (province_name) VALUES ('Limpopo');
INSERT INTO provinces (province_name) VALUES ('Mpumalanga');
INSERT INTO provinces (province_name) VALUES ('FreeState');
INSERT INTO provinces (province_name) VALUES ('Eastern Cape');
INSERT INTO provinces (province_name) VALUES ('Northern Cape');
INSERT INTO provinces (province_name) VALUES ('North West');

--Insert Categories Data
INSERT INTO categories (category_name) VALUES ('Vegatables');
INSERT INTO categories (category_name) VALUES ('Fruit');
INSERT INTO categories (category_name) VALUES ('Grain');
INSERT INTO categories (category_name) VALUES ('Dairy');
INSERT INTO categories (category_name) VALUES ('Other');

-- INSERT Order Statuses
INSERT INTO order_statuses (status_name) VALUES ('Pending')
INSERT INTO order_statuses (status_name) VALUES ('Confirmed')
INSERT INTO order_statuses (status_name) VALUES ('Cancelled')
INSERT INTO order_statuses (status_name) VALUES ('Collected');

--Insert buyer types
INSERT INTO buyer_types (types_name) VALUES ('individual')
INSERT INTO buyer_types (types_name) VALUES ('restaurant')
INSERT INTO buyer_types (types_name) VALUES ('business')
INSERT INTO buyer_types (types_name) VALUES ('school')
INSERT INTO buyer_types (types_name) VALUES ('other')