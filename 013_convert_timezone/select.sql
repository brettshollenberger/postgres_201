SHOW timezone;
SET timezone = 'UTC';
SET timezone = 'US/Pacific';
SELECT now();

CREATE TABLE times (
  time timestamp
);

INSERT INTO times (time) VALUES (now());
SELECT time AT TIME ZONE 'UTC' FROM times;

SELECT now() AT TIME ZONE 'PST';

SELECT now() AT TIME ZONE 'UTC';
