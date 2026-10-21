-- Lost Kingsland Web V27 read-only role
-- Run while connected as DB owner to lost_kingsland_v4_reconciled.
-- Change the login password before use.

DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname='lost_kingsland_web_ro') THEN
        CREATE ROLE lost_kingsland_web_ro LOGIN PASSWORD 'CHANGE_ME_NOW';
    END IF;
END $$;

DO $$
DECLARE s text;
BEGIN
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO lost_kingsland_web_ro', current_database());
    FOREACH s IN ARRAY ARRAY['platform','identity','hero','adventure','inventory','commander','kingdom','march','market','clan','content','gacha'] LOOP
        IF EXISTS (SELECT 1 FROM pg_namespace WHERE nspname=s) THEN
            EXECUTE format('GRANT USAGE ON SCHEMA %I TO lost_kingsland_web_ro', s);
            EXECUTE format('GRANT SELECT ON ALL TABLES IN SCHEMA %I TO lost_kingsland_web_ro', s);
        END IF;
    END LOOP;
END $$;

-- No INSERT/UPDATE/DELETE grants. Public/gameplay mutations must go through Game Core APIs.
