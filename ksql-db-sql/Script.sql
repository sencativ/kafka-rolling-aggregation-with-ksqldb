CREATE STREAM transactions_stream (
    transaction_id VARCHAR,
    user_name VARCHAR,
    crypto_type VARCHAR,
    transaction_amount DOUBLE,
    transaction_fee DOUBLE,
    timestamp BIGINT
)
WITH (
        KAFKA_TOPIC = 'assignment-reza',
        VALUE_FORMAT = 'JSON'
    );