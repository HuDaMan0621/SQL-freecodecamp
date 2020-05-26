create table restaurant (
	id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR NOT NULL, 
	address VARCHAR(200),
	category VARCHAR(150)
);

create table reviewer (
	id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR NOT NULL, 
	email VARCHAR(200),
	karma VARCHAR(7) DEFAULT 0 CHECK (karma >= 0 AND karma <= 7) 
)

create table review (
	id BIGSERIAL PRIMARY KEY,
    reviewer_id INTEGER REFERENCES reviewer(id),
	stars INTEGER NOT NULL CHECK (stars >= 1 AND stars <=5),
    title VARCHAR,
    review VARCHAR,
    restaurant_id INTEGER REFERENCES review(id) 
)

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