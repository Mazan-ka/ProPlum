-- fw.logs definition

-- Drop table

-- DROP TABLE fw.logs;

CREATE TABLE fw.logs (
	log_id int8 NOT NULL,
	load_id int8 NULL,
	log_timestamp timestamp NOT NULL DEFAULT now(),
	log_type text NOT NULL,
	log_msg text NOT NULL,
	log_location text NULL,
	is_error bool NULL,
	log_user text NULL DEFAULT "current_user"(),
	CONSTRAINT pk_log_id PRIMARY KEY (log_id)
)
DISTRIBUTED BY (log_id);

-- Permissions

ALTER TABLE fw.logs OWNER TO "admin";
GRANT ALL ON TABLE fw.logs TO "admin";