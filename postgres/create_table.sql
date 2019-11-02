CREATE TABLE criteria_set_value_table (
    id SERIAL PRIMARY KEY,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone,
    type character varying(10),
    value character varying(30),
    name character varying(30),
    common_id character varying(30),
    field_name character varying(30),
    table_name character varying(30),
    table_section character varying(30),
    creator_id integer REFERENCES "user" DEFERRABLE INITIALLY DEFERRED,
    criteria_set_value_id integer REFERENCES "criteria_set_value" DEFERRABLE INITIALLY DEFERRED,
    join_id integer NOT NULL REFERENCES "join" DEFERRABLE INITIALLY DEFERRED,
    line integer NOT NULL
);
