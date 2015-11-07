-- Table: lol_api.champions_static

-- DROP TABLE lol_api.champions_static;

CREATE TABLE lol_api.champions_static
(
  id integer NOT NULL,
  blurb text,
  image bytea,
  "allytipsID" integer,
  "enemytipsID" integer,
  info text,
  CONSTRAINT "cstaticID" PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE lol_api.champions_static
  OWNER TO postgres;
COMMENT ON TABLE lol_api.champions_static
  IS 'lol-static-data-v1.2 [BR, EUNE, EUW, KR, LAN, LAS, NA, OCE, PBE, RU, TR]';
