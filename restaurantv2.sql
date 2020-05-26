create table restaurant (
	id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL, 
	address VARCHAR(200),
	category VARCHAR(150)
);

create table reviewer (
	id SERIAL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL, 
	email VARCHAR(200),
	karma NUMERIC(7) DEFAULT 0 CHECK (karma >= 0 AND karma <= 7) 
);

create table review (
	id SERIAL PRIMARY KEY,
    reviewer_id INTEGER REFERENCES reviewer (id),
	stars INTEGER NOT NULL CHECK (stars >= 1 AND stars <=5) NOT NULL,
    title VARCHAR,
    review VARCHAR,
    restaurant_id INTEGER REFERENCES restaurant(id) 
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'ShakeShack',
    '3035 Peachtree Road NE, Suite A146 Atlanta, GA 30305',
    'Fast Food'

),
(
    DEFAULT,
    'Fago de Chao',
    '3101 Piedmont Rd NE, Atlanta, GA 30305',
    'Brazillian BBQ'
),
(
    DEFAULT,
    'Chick F liA',
    '3393 Peachtree Rd NE, Atlanta, GA 30326',
    'Fast Good food'   
),
(
    DEFAULT,
    'Mooya',
    '3439 Colonnade Pkwy Ste. 1000 Ste. 1000, Birmingham, AL 35243',
    'Far away good burger'
    
),
(
    DEFAULT,
    'Nori Nori',
    '6690 Roswell Rd NE Ste 2110, Sandy Springs, GA 30328',
    'Buffet'
    
);

INSERT INTO reviewer VALUES (
    DEFAULT,
    'John',
    'Doe',
    'John.Doe@gamil.com',
    6

),
(
    DEFAULT,
    'Sam',
    'Ho',
    'Sam.Ho@gamil.com',
    3
),
(
    DEFAULT,
    'Tommy',
    'Toms',
    'Tommy.Toms@gamil.com',
    4
),

(
    DEFAULT,
    'Johnny',
    'Sins',
    'Johnny.Sins@gamil.com',
    2
);

INSERT INTO review VALUES (
    DEFAULT,
    0,
    2,
    'service no good',
    'no water after an 20 minutes sitting on the table',
    0
);

-- create table review (
-- 	id BIGSERIAL PRIMARY KEY,
--     reviewer_id INTEGER REFERENCES reviewer (id),
-- 	stars INTEGER NOT NULL CHECK (stars >= 1 AND stars <=5) NOT NULL,
--     title VARCHAR,
--     review VARCHAR,
--     restaurant_id INTEGER REFERENCES review(id) 
-- );

[
  {
    "id" : 0,
    "stars" : 5,
    "title" : "great food and service",
    "reviewer_id" : 4,
    "review" : "extremely high scale",
    "restaurant_id" : 0
  },
  {
    "id" : 1,
    "stars" : 2,
    "title" : "great food",
    "reviewer_id" : 1,
    "review" : "food so good, yum",
    "restaurant_id" : 1
  },
  {
    "id" : 2,
    "stars" : 3,
    "title" : "food 0 taste",
    "reviewer_id" : 2,
    "review" : "gave it a 3 because it's of the waitress for the service",
    "restaurant_id" : 2
  },
  {
    "id" : 3,
    "stars" : 4,
    "title" : "A plus service",
    "reviewer_id" : 3,
    "review" : "food was ok, but service deserve a 5 star",
    "restaurant_id" : 3
  },
  {
    "id" : 4,
    "stars" : 4,
    "title" : "delicious",
    "reviewer_id" : 4,
    "review" : "will come again",
    "restaurant_id" : 3
  },
  {
    "id" : 5,
    "stars" : 4,
    "title" : "YUM",
    "reviewer_id" : 4,
    "review" : "NOM NOM NOM",
    "restaurant_id" : 4
  }
]


INSERT INTO "public"."review"("id","reviewer_id","stars","title","review","restaurant")
VALUES
(0,4,5,E'great food and service',E'extremely high scale',0),
(1,1,2,E'great food',E'food so good, yum',1),
(2,2,3,E'food 0 taste',E'gave it a 3 because it\'s of the waitress for the service',2),
(3,3,4,E'A plus service',E'food was ok, but service deserve a 5 star',3),
(4,4,4,E'delicious',E'will come again',3),
(5,4,4,E'YUM',E'NOM NOM NOM',4);

INSERT INTO "public"."review"("reviewer_id", "stars", "title", "review", "restaurant_id") 
VALUES

(0,4,5,E'great food and service',E'extremely high scale',0),
(1,1,2,E'great food',E'food so good, yum',1),
(2,2,3,E'food 0 taste',E'gave it a 3 because it\'s of the waitress for the service',2),
(3,3,4,E'A plus service',E'food was ok, but service deserve a 5 star',3),
(4,4,4,E'delicious',E'will come again',3),
(5,4,4,E'YUM',E'NOM NOM NOM',4);


INSERT INTO "public"."review"("id","reviewer_id","stars","title","review","restaurant_id")
VALUES
(2,1,2,E'Nom',E'Good food and service',1);
(3,3,4,E'A plus service',E'food was ok, but service deserve a 5 star',3),
(4,4,4,E'delicious',E'will come again',3),
(5,4,4,E'YUM',E'NOM NOM NOM',4);