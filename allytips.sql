-- Table: lol_api.allytips

-- DROP TABLE lol_api.allytips;

CREATE TABLE lol_api.allytips
(
  id integer NOT NULL,
  tip text,
  votes integer,
  CONSTRAINT "allytipsID" PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE lol_api.allytips
  OWNER TO postgres;
