CREATE TABLE cats (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  owner_id INTEGER,

  FOREIGN KEY(owner_id) REFERENCES human(id)
);

CREATE TABLE humans (
  id INTEGER PRIMARY KEY,
  fname VARCHAR(255) NOT NULL,
  lname VARCHAR(255) NOT NULL,
  house_id INTEGER,

  FOREIGN KEY(house_id) REFERENCES human(id)
);

CREATE TABLE houses (
  id INTEGER PRIMARY KEY,
  address VARCHAR(255) NOT NULL
);

INSERT INTO
  houses (id, address)
VALUES
  (1, "Herald Towers"), (2, "Ablemarle Rd");

INSERT INTO
  humans (id, fname, lname, house_id)
VALUES
  (1, "Michelle", "Panzironi", 1),
  (2, "Jeremy", "Block", 2),
  (3, "Brendon", "Biagi", 1),
  (4, "Sarah", "Mulhern", NULL);

INSERT INTO
  cats (id, name, owner_id)
VALUES
  (1, "Khaleesi", 1),
  (2, "Victor", 2),
  (3, "Biz", 3),
  (4, "Kitty", 3),
  (5, "Stray", NULL);
