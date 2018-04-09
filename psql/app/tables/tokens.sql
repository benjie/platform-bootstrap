CREATE TYPE token_type as enum('api', 'login', 'app');

CREATE TABLE tokens(
  id                      uuid default uuid_generate_v4() primary key,
  owner_id                int references owners on delete cascade not null,
  type                    token_type not null,
  name                    title,
  expires                 timestamp,  -- check must be future
  permissions             permission[]
);
COMMENT on column tokens.id is 'The token itself that is shared with the user.';
COMMENT on column tokens.type is 'User login, api token, or application link.';
COMMENT on column tokens.name is 'A custom title for the login.';
COMMENT on column tokens.expires is 'Date the token should expire on.';
COMMENT on column tokens.permissions is 'List of permissions this token has privileges too.';

create index token_owners on tokens (owner_id);
