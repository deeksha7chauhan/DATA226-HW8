WITH session_data AS (
    SELECT
        sessionId,
        ts
    FROM {{ source('raw_data', 'session_timestamp') }}
)
SELECT 
    sessionId,
    ts
FROM session_data;
