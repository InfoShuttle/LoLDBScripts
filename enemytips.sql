-- Table: lol_api.enemytips

-- DROP TABLE lol_api.enemytips;

CREATE TABLE lol_api.enemytips
(
  id integer NOT NULL,
  tip text,
  votes integer,
  CONSTRAINT "enemytipsID" PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE lol_api.enemytips
  OWNER TO postgres;
