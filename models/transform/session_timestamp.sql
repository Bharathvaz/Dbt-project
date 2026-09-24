WITH source AS (
    SELECT
        sessionId,
        ts
    FROM {{ source('raw', 'session_timestamp') }}
    WHERE sessionId IS NOT NULL
)

SELECT *
FROM source
