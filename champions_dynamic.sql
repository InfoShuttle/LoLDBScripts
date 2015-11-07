-- Table: lol_api.champions_dynamic

-- DROP TABLE lol_api.champions_dynamic;

CREATE TABLE lol_api.champions_dynamic
(
  id integer NOT NULL, -- Champion ID. For static information correlating to champion IDs, please refer to the LoL Static Data API.
  active boolean, -- Indicates if the champion is active.
  "botEnabled" boolean,
  "botMmEnabled" boolean,
  "freeToPlay" boolean,
  "rankedPlayEnabled" boolean,
  CONSTRAINT "cdynamicID" PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE lol_api.champions_dynamic
  OWNER TO postgres;
COMMENT ON TABLE lol_api.champions_dynamic
  IS 'champion-v1.2 [BR, EUNE, EUW, KR, LAN, LAS, NA, OCE, RU, TR]';
COMMENT ON COLUMN lol_api.champions_dynamic.id IS 'Champion ID. For static information correlating to champion IDs, please refer to the LoL Static Data API.';
COMMENT ON COLUMN lol_api.champions_dynamic.active IS 'Indicates if the champion is active.';

