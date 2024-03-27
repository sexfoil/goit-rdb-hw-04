INSERT INTO authors (author_name) 
VALUES 
	('Barbara Cartland'),
    ('Harold Robbins'),
    ('Stephen King'),
    ('Agatha Christie');
    
INSERT INTO genres (genre_name) 
VALUES 
	('Romance'),
    ('Adventure'),
    ('Horror'),
    ('Detectives');

INSERT INTO books (title, publication_year, author_id, genre_id) 
VALUES 
	('Adventure of Heroes', 2001, 1, 2),
    ('Some Name of Horror Book', 1995, 1, 3),
    ('The Green Mile', 1996, 3, 3),
    ('Bad Romance', 2006, 2, 1),
    ('The Horror Detective in Fiction', 1999, 3, 4),
    ('Detectives Novels', 2012, 4, 4);

INSERT INTO users (username, email) 
VALUES 
	('Tom Cruise', 'tom@gmail.com'),
    ('Anna Kendrik', 'anna_k@usa.com'),
    ('Bill Gates', 'william_gates@microsoft.net');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) 
VALUES 
	(4, 2, '2024-01-01', '2024-01-23'),
    (1, 3, '2024-01-12', '2024-02-22'),
    (3, 1, '2024-03-09', NULL),
    (6, 2, '2024-03-20', NULL);
