use edge;
CREATE TABLE hotel_inv (
    number_of_room INT,
    room_number VARCHAR(10) primary key,
    facilities TEXT,
    location VARCHAR(50)
);
INSERT INTO hotel_inv (number_of_room, room_number, facilities, location) VALUES
(1, '101', 'AC, Free Wi-Fi, TV', 'Dhaka'),
(1, '102', 'Non-AC, Free Wi-Fi', 'Dhaka'),
(2, '201', 'AC, Free Breakfast, Pool', 'Chittagong'),
(1, '202', 'Non-AC, Free Parking', 'Dinajpur'),
(2, '301', 'AC, Free Breakfast, Gym', 'Sylhet'),
(1, '302', 'Non-AC, Free Wi-Fi, TV', 'Sylhet'),
(3, '401', 'AC, Free Wi-Fi, Pool, TV', 'Khulna'),
(2, '402', 'Non-AC, Free Parking, TV', 'Khulna'),
(1, '501', 'AC, Free Breakfast', 'Dinajpur'),
(1, '502', 'Non-AC, TV', 'Barishal'),
(2, '601', 'AC, Free Wi-Fi, Gym', 'Rangpur'),
(1, '602', 'Non-AC, Free Wi-Fi', 'Rangpur'),
(1, '701', 'AC, Free Parking', 'Rajshahi'),
(2, '702', 'Non-AC, Free Breakfast, TV', 'Rangpur'),
(3, '801', 'AC, Free Wi-Fi, Pool, Gym', 'Dhaka');

INSERT INTO hotel_inv (number_of_room, room_number, facilities, location) VALUES (1, '401', 'AC, kitchen, Pool, Gym', 'Dhaka');
INSERT INTO hotel_inv (number_of_room, room_number, facilities, location) VALUES (2, '451', 'AC, kitchen, Pool, Gym', 'Lalmonirhat');

select * from hotel_inv;

select * from hotel_inv where location = 'Dinajpur';

select room_number from hotel_inv where facilities LIKE '%kitchen%' AND facilities LIKE '%AC%';

select room_number from hotel_inv order by room_number desc;

select sum(number_of_room) as total_rooms from hotel_inv;

select * from hotel_inv where room_number like '_5%';








