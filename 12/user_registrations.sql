create table user_registrations (
    id integer primary key
    , name text not null
    , email text not null unique
);