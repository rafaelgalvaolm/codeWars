CREATE FUNCTION agecalculator (d timestamp)
    RETURNS integer AS $$

    BEGIN
        RETURN (SELECT EXTRACT(year FROM age(d)))::int;
    END;
        $$ LANGUAGE plpgsql;
