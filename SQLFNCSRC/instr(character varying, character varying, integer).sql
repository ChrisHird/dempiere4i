-- Function: instr(character varying, character varying, integer)

-- DROP FUNCTION instr(character varying, character varying, integer);

CREATE OR REPLACE FUNCTION instr(
    string character varying,
    string_to_search character varying,
    beg_index integer)
  RETURNS integer AS
$BODY$
DECLARE
    pos integer NOT NULL DEFAULT 0;
    temp_str varchar;
    beg integer;
    length integer;
    ss_length integer;
BEGIN
    IF beg_index > 0 THEN
        temp_str = substring(string FROM beg_index);
        pos = position(string_to_search IN temp_str);

        IF pos = 0 THEN
            RETURN 0;
        ELSE
            RETURN pos + beg_index - 1;
        END IF;
    ELSE
        ss_length = char_length(string_to_search);
        length = char_length(string);
        beg = length + beg_index - ss_length + 2;

        WHILE beg > 0 LOOP
            temp_str = substring(string FROM beg FOR ss_length);
            pos = position(string_to_search IN temp_str);

            IF pos > 0 THEN
                RETURN beg;
            END IF;

            beg = beg - 1;
        END LOOP;

        RETURN 0;
    END IF;
END;
$BODY$
  LANGUAGE plpgsql IMMUTABLE STRICT
  COST 100;
ALTER FUNCTION instr(character varying, character varying, integer)
  OWNER TO adempiere;
