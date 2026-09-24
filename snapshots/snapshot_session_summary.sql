{% snapshot snapshot_session_summary %}

{{
    config(
        target_database='DEV',
        target_schema='ANALYTICS',
        unique_key='sessionId',
        strategy='timestamp',
        updated_at='ts'
    )
}}

SELECT *
FROM {{ ref('session_summary') }}

{% endsnapshot %}
