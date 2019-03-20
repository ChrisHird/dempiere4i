-- Function: addyears(TIMESTAMP, DECFLOAT(34))

-- DROP FUNCTION addyears(TIMESTAMP, DECFLOAT(34));

CREATE OR REPLACE FUNCTION addyears(
    datetime TIMESTAMP,
    years DECFLOAT(34))
  RETURNS date AS
$BODY$
/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2015 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpcya.com                                 *
 *****************************************************************************
 ***
 * Title:	Add Years to Date
 * Description:
 *	Add years to date
 *
 * Test:
 * 	SELECT addyears(now(), 3) FROM DUAL; - Add years to current date
 ************************************************************************/
declare duration varchar;
BEGIN
	if datetime is null or years is null then
		return null;
	end if;
	duration = years || ' years';	 
	return cast(datetime + cast(duration as interval) as date);
END;

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION addyears(TIMESTAMP, DECFLOAT(34))
  OWNER TO adempiere;
