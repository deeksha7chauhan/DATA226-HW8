WITH user_data AS (
    SELECT
        userId,
        sessionId,
        channel
    FROM {{ source('raw_data', 'user_session_channel') }}
)
SELECT 
    userId,
    sessionId,
    channel
FROM user_data;
