CREATE TYPE build_state as enum('queued', 'building', 'success', 'failure', 'error');

CREATE TABLE builds(
  id                      int not null,
  repo_id                 int references repos on delete cascade not null,
  timestamp               timestamptz not null,
  sha                     sha not null,
  state                   build_state not null,
  primary key (id, repo_id)
);
COMMENT on table builds is 'Building results from an Application.';
COMMENT on column builds.timestamp is 'Date the build started.';
COMMENT on column builds.sha is 'The commit id of the build being tested.';
COMMENT on column builds.state is 'The state of the build.';

CREATE FUNCTION builds_next_id() returns trigger as $$
  begin
    new.id := greatest((select max(id) from builds where repo_id=new.repo_id), 0) + 1;
    return new;
  end;
$$ language plpgsql;


CREATE TRIGGER builds_next_id_insert before insert on builds
  for each row execute procedure builds_next_id();
