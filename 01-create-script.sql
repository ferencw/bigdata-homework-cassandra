CREATE KEYSPACE homework WITH REPLICATION = {'class' : 'SimpleStrategy', 'replication factor': 1};
-- Use keyspace
USE homework;
--Creates the table --
CREATE TABLE invoice
    (
      invoice_id text,
      invoice_date date static,
      invoice_address text static,
      line_id int,
      article_name text,
      article_price decimal,
      PRIMARY KEY((invoice_id), article_name)
    )
WITH CLUSTERING ORDER BY
(article_name ASC);

CREATE INDEX ON invoice(invoice_date);