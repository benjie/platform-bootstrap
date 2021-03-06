CREATE TYPE git_service as enum('github');

CREATE DOMAIN title as citext
  CHECK ( LENGTH(VALUE) < 25 AND VALUE ~ '^[\w\-\.\s]+$' );

CREATE DOMAIN username as text
  CHECK (LENGTH(VALUE) <= 40 AND VALUE ~ '^[\w\-]+$' );

CREATE DOMAIN hostname as text
  CHECK ( LENGTH(VALUE) > 7 AND LENGTH(VALUE) < 25 AND VALUE ~ '^((\*|[a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\-]*[a-zA-Z0-9])\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\-]*[A-Za-z0-9])$' );

CREATE DOMAIN email AS citext
  CHECK ( LENGTH(VALUE) >= 5 AND LENGTH(VALUE) <= 512 AND VALUE ~ '^[^@]+@[^@]+\.[^@]+$' );

CREATE DOMAIN sha as citext
  CHECK ( LENGTH(VALUE) = 40 AND VALUE ~ '^\w+$' );

CREATE DOMAIN alias as citext
  CHECK ( LENGTH(VALUE) > 1 AND LENGTH(VALUE) < 25 AND VALUE ~ '^[\w\-\.]+$' );

CREATE DOMAIN url as citext
  CHECK ( LENGTH(VALUE) <= 4096 and VALUE ~ '^https?://');

CREATE TYPE billing_region as enum('US', 'EU');

CREATE TYPE build_state as enum('QUEUED', 'BUILDING', 'SUCCESS', 'FAILURE', 'ERROR');

CREATE TYPE release_state as enum('PREVIOUS', 'ACTIVE', 'NEXT', 'ROLLBACK', 'QUEUED');

CREATE TYPE token_type as enum('API', 'LOGIN', 'APP');
