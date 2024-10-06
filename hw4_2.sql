INSERT INTO authors (author_name) VALUES
    ('Bill West'),
    ('Lesya Smith');

INSERT INTO genres (genre_name) VALUES
    ('Comedy'),
    ('Action');

INSERT INTO books (title, publication_year, author_id, genre_id) VALUES
    ('Aircraft', 1980, 7, 7),
    ('Bad Boys', 1999, 8, 8);

INSERT INTO users (username, email) VALUES
    ('Nick', 'nick@example.com'),
    ('Jane', 'jane@example.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
    (15, 7, '2024-10-01', '2024-10-06'),
    (16, 8, '2024-08-15', NULL);