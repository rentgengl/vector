-- Создадим базу данныех
CREATE DATABASE logs;
-- Создадим таблицу для хранения логов PostgreSQL
CREATE TABLE logs.pg_json
(
    `timestamp` DateTime,
    `user` String,
    `dbname` String,
    `pid` Int32,
    `remote_host` String,
    `remote_port` Int32,
    `session_id` String,
    `line_num` Int32,
    `ps` String,
    `session_start` String,
    `vxid` String,
    `txid` String,
    `error_severity` String,
    `state_code` String,
    `message` String,
    `detail` String,
    `hint` String,
    `internal_query` String,
    `internal_position` Int32,
    `context` String,
    `statement` String,
    `cursor_position` Int32,
    `func_name` String,
    `file_name` String,
    `file_line_num` Int32,
    `application_name` String,
    `backend_type` String,
    `leader_pid` Int32,
    `query_id` Int32
)
ENGINE = MergeTree
ORDER BY timestamp
SETTINGS index_granularity = 8192;