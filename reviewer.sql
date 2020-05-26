create table reviewer (
	id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR NOT NULL, 
	email VARCHAR(200),
	karma VARCHAR(7) CONSTRAINT 
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'ShakeShack',
    '3035 Peachtree Road NE, Suite A146 Atlanta, GA 30305',
    'Fast Food'
)