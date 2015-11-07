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
  "key" text,
  lore text,
  name text,
  partype text,
  "passiveID" integer,
  "recommended" integer,
  "skinsID" integer,
  "spellsID" integer,
  "statsID" integer,
  tags text,
  title text,
  CONSTRAINT "cstaticPID" PRIMARY KEY (id)
  CONSTRAINT "cstaticFID" FOREIGN KEY ("allytipsID")
      REFERENCES lol_api.allytips (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE lol_api.champions_static
  OWNER TO postgres;
COMMENT ON TABLE lol_api.champions_static
  IS 'lol-static-data-v1.2 [BR, EUNE, EUW, KR, LAN, LAS, NA, OCE, PBE, RU, TR]';

-- Index: lol_api."fki_cstaticFID"

-- DROP INDEX lol_api."fki_cstaticFID";

CREATE INDEX "fki_cstaticFID"
  ON lol_api.champions_static
  USING btree
  ("allytipsID");