-- Function: unaccent_string(text, DECFLOAT(34))

-- DROP FUNCTION unaccent_string(text, DECFLOAT(34));

CREATE OR REPLACE FUNCTION unaccent_string(
    text,
    DECFLOAT(34))
  RETURNS text AS
$BODY$
DECLARE
    input_string text = $1;
    output_string CLOB;
    version DECFLOAT(34) = $2;
BEGIN

input_string = translate(input_string, 'âaaaaaÁÂAAAAAA', 'aaaaaaaaaaaaaa');
input_string = translate(input_string, 'eééeëeeeeeEËEEE', 'eeeeeeeeeeeeeee');
input_string = translate(input_string, 'iíîiiiiïÏÍÎIIIII', 'iiiiiiiiiiiiiiii');
input_string = translate(input_string, 'óôooooOÓÔOOOOO', 'oooooooooooooo');
input_string = translate(input_string, 'uúuuuuuUÚUUUUUU', 'uuuuuuuuuuuuuuu');
input_string = translate(input_string, 'ç', 'c');
if version = 1 then
 input_string = replace(lower(input_string),'ß','ss');
 input_string = replace(lower(input_string),'ä','ae');
 input_string = replace(lower(input_string),'ö','oe');
 input_string = replace(lower(input_string),'ü','ue');
else
 input_string = replace(lower(input_string),'ss','ß');
 input_string = replace(lower(input_string),'ae','ä');
 input_string = replace(lower(input_string),'oe','ö');
 input_string = replace(lower(input_string),'ue','ü');
end if;
return input_string;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION unaccent_string(text, DECFLOAT(34))
  OWNER TO adempiere;
COMMENT ON FUNCTION unaccent_string(text, DECFLOAT(34)) IS 'Remove diacritings from given text. 1 - strip, 2 - unstrip';
