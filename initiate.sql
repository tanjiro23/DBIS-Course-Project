DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS feedback;
DROP TABLE IF EXISTS milk_rate_table;
DROP TABLE IF EXISTS dairy_milk_sell_table;
DROP TABLE IF EXISTS sellertable;
DROP TABLE IF EXISTS stafftable;
DROP TABLE IF EXISTS headtable;
DROP TABLE IF EXISTS centertable;
DROP TABLE IF EXISTS deliver_milk_details;
DROP TABLE IF EXISTS shoptable;


CREATE TABLE users (user_id varchar(15) NOT NULL PRIMARY KEY,
                    password varchar(10) NOT NULL,
                    role varchar(20) NOT NULL,
                    check (role in ('Buyer','Seller', 'Head','Staff','Admin'))
                    );
INSERT INTO users VALUES ('Ayush', '12345', 'Admin');
INSERT INTO users VALUES (2222, '12345', 'Head');

CREATE TABLE headtable (ID varchar(10) REFERENCES users(user_id),
                        name varchar(50) NOT NULL,
                        salary BIGINT NOT NULL,
                        phone_no varchar(10) NOT NULL,
                        center_no varchar(10),
                        PRIMARY KEY(ID)
                        );
INSERT INTO headtable VALUES (2222, 'Mandar Sunil', '100000', '2983746465', 2332);

CREATE TABLE centertable (center_no varchar(15) NOT NULL PRIMARY KEY,
                            city varchar(10) NOT NULL,
                            head_id varchar(10) NOT NULL REFERENCES headtable(ID));
INSERT INTO centertable VALUES (2332, 'Kanpur', 190010017);

CREATE TABLE stafftable (st_ID varchar(10) PRIMARY KEY,
                        st_name varchar(50) NOT NULL,
                        salary bigint NOT NULL,
                        phone_no varchar(10) NOT NULL,
                        head_ID varchar(10) REFERENCES headtable(ID));
                        -- s_code varchar(10) REFERENCES sellertable(s_code));
INSERT INTO stafftable VALUES (1118, 'Neville', 100000, 3209494493, 2222);

CREATE TABLE milk_rate_table (Date date,
                            center_no varchar(15) ,
                            city varchar(10) NOT NULL,
                            quantity_cow_milk float NOT NULL,
                            quantity_buffalo_milk float NOT NULL,
                            fat_cow_milk float NOT NULL,
                            fat_buffalo_milk float NOT NULL,
                            PRIMARY KEY (Date, center_no));
INSERT INTO milk_rate_table VALUES ('2020-11-27', 2332, 'Kanpur', 200, 300, 3.4, 5.5);

CREATE TABLE sellertable (s_code varchar(10) PRIMARY KEY,
                            user_id varchar(10) NOT NULL,
                            s_name varchar(50) NOT NULL,
                            center_no varchar(15) NOT NULL,
                            cattle_type varchar(50) NOT NULL,
                            r_date date NOT NULL,
                            head_ID varchar(10) REFERENCES headtable(ID),
                            check (cattle_type in ('cow','buffalo')));
INSERT INTO sellertable VALUES (9889, 'yamete', 'AyushGupta', '2332', 'cow', '2020-11-27',2222);

CREATE TABLE dairy_milk_sell_table (user_ID varchar(10),
                                    s_code varchar(10) REFERENCES sellertable(s_code),
                                    fat float NOT NULL,
                                    quantity int NOT NULL,
                                    cattle_type varchar(50) NOT NULL,
                                    submit_date date,
                                    center_no varchar(15),
                                    PRIMARY KEY (user_ID, cattle_type, submit_date),
                                    check (cattle_type in ('cow','buffalo')));
INSERT INTO dairy_milk_sell_table VALUES (2221, '9889', 4.4, 20, 'buffalo', '2020-11-27', 2332);

CREATE TABLE shoptable (shopNo varchar(15) NOT NULL,
                        city varchar(10) NOT NULL,
                        incharge varchar(50) NOT NULL,
                        shop_name varchar(50) NOT NULL,
                        address varchar(50) NOT NULL,
                        buyer_id varchar(10) PRIMARY KEY);
INSERT INTO shoptable VALUES (2033, 'Kanpur', 'Ayush', 'Mandar Milk and Sweets', 'Bhoopali Mess, IIT Dharwad', 1112);

CREATE TABLE deliver_milk_details (shop_no varchar(15) NOT NULL,
                                    fat float NOT NULL,
                                    quantity int NOT NULL,
                                    type varchar(50) NOT NULL,
                                    Date date,
                                    buyer_ID varchar(10) REFERENCES shoptable(buyer_id),
                                    PRIMARY KEY (shop_no, Date, type),
                                    check (type in ('cow','buffalo')));
INSERT INTO deliver_milk_details VALUES (2033, 4.4, 50, 'cow', '2020-11-27', 1112);
INSERT INTO deliver_milk_details VALUES (2033, 6.4, 50, 'buffalo', '2020-11-27', 1112);

CREATE TABLE feedback (feedback varchar(100) NOT NULL,
                        role varchar(10) NOT NULL,
                        name varchar(50) NOT NULL,
                        ID varchar(10) NOT NULL,
                        Date date,
                        PRIMARY KEY (ID, Date));
INSERT INTO feedback VALUES ('The Staff With Seller ID 1111 Is Very Helpful', 'staff', 'Gnani', '4560', '2020-11-27');
