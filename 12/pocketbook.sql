create table pocketbook(
    id serial primary key
    , date date not null default current_date
    , amount integer not null
    , memo text
);
create index pocketbook_date_amount_idx on pocketbook(date, amount);