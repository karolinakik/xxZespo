alter table histories add column user_id INT UNSIGNED NOT NULL;
alter table histories add column order_data TIMESTAMP NOT NULL;
alter table histories add column event_id INT UNSIGNED NOT NULL;
alter table histories add column estatus varchar(1) NOT NULL;

alter table histories drop column created_at;
alter table histories drop column updated_at;