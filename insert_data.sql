INSERT INTO users VALUES ('4555', '12345', 'Head');
INSERT INTO users VALUES ('4556', '12345', 'Head');
INSERT INTO users VALUES ('4557', '12345', 'Staff');
INSERT INTO users VALUES ('4558', '12345', 'Staff');
INSERT INTO users VALUES ('4559', '14345', 'Staff');
INSERT INTO users VALUES ('4560', '1345', 'Staff');
INSERT INTO users VALUES ('4551', '12345', 'Seller');
INSERT INTO users VALUES ('4552', '1112345', 'Seller');
INSERT INTO users VALUES ('4553', '1234345', 'Seller');
INSERT INTO users VALUES ('4554', '1234532', 'Seller');
INSERT INTO users VALUES ('4561', '12345', 'Buyer');
INSERT INTO users VALUES ('4562', '12345234', 'Buyer');
INSERT INTO users VALUES ('4563', '12345', 'Buyer');
INSERT INTO users VALUES ('4564', '12345', 'Buyer');

INSERT INTO centertable VALUES (8821, 'Kanpur', 4555);
INSERT INTO centertable VALUES (8822, 'Hyderabad', 4556);

INSERT INTO headtable VALUES (4555, 'Newtan', '100000', '2983749965', 8821);
INSERT INTO headtable VALUES (4556, 'Anand', '100000', '2983886465', 8822);

INSERT INTO stafftable VALUES (4557, 'Gopal', 100000, 2309494493, 4555);
INSERT INTO stafftable VALUES (4558, 'Narayan', 100000, 5609494493, 4556);
INSERT INTO stafftable VALUES (4559, 'Shilpa', 100000, 7709494493, 4555);
INSERT INTO stafftable VALUES (4560, 'Gnani', 100000, 9009494493, 4556);

INSERT INTO milk_rate_table VALUES ('2020-09-11', 8821, 'Kanpur', 200, 3000, 7.4, 8.5);
INSERT INTO milk_rate_table VALUES ('2021-10-21', 8821, 'Kanpur', 250, 2000, 7.4, 8.5);
INSERT INTO milk_rate_table VALUES ('2021-10-15', 8821, 'Kanpur', 300, 1000, 7.5, 8.0);
INSERT INTO milk_rate_table VALUES ('2021-09-21', 8821, 'Kanpur', 200, 2000, 7.4, 8.5);
INSERT INTO milk_rate_table VALUES ('2021-10-18', 8821, 'Kanpur', 300, 3000, 7.4, 8.0);
INSERT INTO milk_rate_table VALUES ('2021-07-13', 8822, 'Hyderabad', 200, 3000, 7.4, 8.5);
INSERT INTO milk_rate_table VALUES ('2021-10-22', 8822, 'Hyderabad', 250, 2000, 7.4, 8.5);
INSERT INTO milk_rate_table VALUES ('2021-10-21', 8822, 'Hyderabad', 300, 1000, 7.5, 8.0);
INSERT INTO milk_rate_table VALUES ('2021-10-27', 8822, 'Hyderabad', 200, 2000, 7.4, 8.5);
INSERT INTO milk_rate_table VALUES ('2021-10-28', 8822, 'Hyderabad', 300, 3000, 7.4, 8.0);

INSERT INTO sellertable VALUES (4551, '1190', 'Jessi', '8821', 'cow', '2021-10-21',4555);
INSERT INTO sellertable VALUES (4552, '1191', 'Havmore', '8822', 'buffalo', '2021-10-22',4556);
INSERT INTO sellertable VALUES (4553, '1192', 'Arun', '8822', 'cow', '2021-10-04',4556);
INSERT INTO sellertable VALUES (4554, '1193', 'Vijaya', '8821', 'buffalo', '2021-10-10',4555);

INSERT INTO dairy_milk_sell_table VALUES (1190, '4551', 7.4, 20, 'cow', '2021-10-21', 2332);
INSERT INTO dairy_milk_sell_table VALUES (1190, '4551', 7.0, 25, 'cow', '2021-10-22', 2332);
INSERT INTO dairy_milk_sell_table VALUES (1191, '4552', 7.4, 30, 'buffalo', '2021-10-21', 2332);
INSERT INTO dairy_milk_sell_table VALUES (1191, '4552', 8.4, 30, 'buffalo', '2021-10-20', 2332);
INSERT INTO dairy_milk_sell_table VALUES (1192, '4553', 7.4, 50, 'cow', '2021-10-19', 2332);
INSERT INTO dairy_milk_sell_table VALUES (1192, '4553', 7.8, 50, 'cow', '2021-10-17', 2332);
INSERT INTO dairy_milk_sell_table VALUES (1193, '4554', 8.6, 20, 'buffalo', '2021-10-14', 2332);
INSERT INTO dairy_milk_sell_table VALUES (1193, '4554', 8.9, 20, 'buffalo', '2021-10-24', 2332);
INSERT INTO dairy_milk_sell_table VALUES (1193, '4554', 8.5, 20, 'buffalo', '2021-10-23', 2332);

INSERT INTO feedback VALUES ('Meh', 'Seller', 'Jessi', 4551, '2021-09-18');
INSERT INTO feedback VALUES ('User Friendly Staff', 'Seller', 'Jessi', 4551, '2021-09-14');
INSERT INTO feedback VALUES ('Nice', 'Seller', 'Jessi', 4551, '2021-09-30');
INSERT INTO feedback VALUES ('Needs Improvement', 'Seller', 'Havmore', 4552, '2021-10-10');
INSERT INTO feedback VALUES ('Good', 'Seller', 'Havmore', 4552, '2021-09-16');
INSERT INTO feedback VALUES ('Quality Products and Punctual Delivery', 'Buyer', 'Kaveri', 4561, '2021-09-11');
INSERT INTO feedback VALUES ('Would Buy Somewhere Else', 'Seller', 'Kaveri', 4561, '2021-09-09');

INSERT INTO shoptable VALUES (4561, 'Hyderabad', 'Kaveri', 'Amul', '100 Ft road', '6781');
INSERT INTO shoptable VALUES (4562, 'Kanpur', 'Rahul', 'Mishra Pedha', 'Jubilee Circle', '6782');
INSERT INTO shoptable VALUES (4563, 'Hyderabad', 'Harsha', 'Sankappa', '100 Ft road', '6783');
INSERT INTO shoptable VALUES (4564, 'Hyderabad', 'Ram', 'Gokul Milk', '100 Ft road', '6784');

INSERT INTO deliver_milk_details VALUES (4561, 7.4, 50, 'cow', '2021-09-13', 6781);
INSERT INTO deliver_milk_details VALUES (4561, 8.4, 50, 'buffalo', '2021-10-24', 6781);
INSERT INTO deliver_milk_details VALUES (4562, 7.6, 20, 'cow', '2021-09-10', 6782);
INSERT INTO deliver_milk_details VALUES (4562, 8.0, 50, 'buffalo', '2021-10-07', 6782);
INSERT INTO deliver_milk_details VALUES (4563, 7.4, 30, 'cow', '2021-10-15', 6783);
INSERT INTO deliver_milk_details VALUES (4563, 8.4, 40, 'buffalo', '2021-09-04', 6783);
INSERT INTO deliver_milk_details VALUES (4564, 7.4, 50, 'cow', '2021-07-21', 6784);
INSERT INTO deliver_milk_details VALUES (4564, 8.4, 50, 'buffalo', '2021-07-23', 6784);
