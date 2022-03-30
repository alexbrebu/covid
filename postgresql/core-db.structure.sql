CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE symptoms(
    id SERIAL,
	uuid_ UUID NOT NULL DEFAULT uuid_generate_v4(),
	slug VARCHAR NOT NULL,
	name VARCHAR NOT NULL,
	UNIQUE(uuid_)
);

CREATE TABLE public.symptom_labels(
	id SERIAL,
	slug VARCHAR NOT NULL,
	name VARCHAR NOT NULL,
	symptom_uuid UUID NOT NULL,
	language VARCHAR NOT NULL,
	FOREIGN KEY (symptom_uuid) REFERENCES symptoms (uuid_)
);
	