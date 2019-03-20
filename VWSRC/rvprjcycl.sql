-- View: rv_projectcycle

-- DROP VIEW rv_projectcycle;

 SELECT p.ad_client_id,
    p.ad_org_id,
    p.isactive,
    p.created,
    p.createdby,
    p.updated,
    p.updatedby,
    c.c_cycle_id,
    c.name AS cyclename,
    c.c_currency_id,
    cs.c_cyclestep_id,
    cs.name AS cyclestepname,
    cs.seqno,
    cs.relativeweight,
    pp.c_phase_id,
    pp.name AS projectphasename,
    pt.c_projecttype_id,
    pt.name AS projecttypename,
    p.value AS projectvalue,
    p.name AS projectname,
    p.description,
    p.note,
    p.c_bpartner_id,
    p.c_bpartner_location_id,
    p.ad_user_id,
    p.poreference,
    p.salesrep_id,
    p.m_warehouse_id,
    p.projectcategory,
    p.datecontract,
    p.datefinish,
    p.iscommitment,
    p.iscommitceiling,
    p.committedqty * cs.relativeweight AS committedqty,
    currencyconvert(p.committedamt, p.c_currency_id, c.c_currency_id, getdate(),
	0, p.ad_client_id, p.ad_org_id) * cs.relativeweight AS committedamt,
    p.plannedqty * cs.relativeweight AS plannedqty,
    currencyconvert(p.plannedamt, p.c_currency_id, c.c_currency_id, getdate(),
	0, p.ad_client_id, p.ad_org_id) * cs.relativeweight AS plannedamt,
    currencyconvert(p.plannedmarginamt, p.c_currency_id, c.c_currency_id, getdate(),
	0, p.ad_client_id, p.ad_org_id) * cs.relativeweight AS plannedmarginamt,
    currencyconvert(p.invoicedamt, p.c_currency_id, c.c_currency_id, getdate(), 
	0, p.ad_client_id, p.ad_org_id) * cs.relativeweight AS invoicedamt,
    p.invoicedqty * cs.relativeweight AS invoicedqty,
    currencyconvert(p.projectbalanceamt, p.c_currency_id, c.c_currency_id, getdate(),
	0, p.ad_client_id, p.ad_org_id) * cs.relativeweight AS projectbalanceamt
   FROM c_cycle c
JOIN ccycls cs ON c.c_cycle_id = cs.c_cycle_id
JOIN ccyclp cp ON cs.c_cyclestep_id = cp.c_cyclestep_id
     JOIN c_phase pp ON cp.c_phase_id = pp.c_phase_id
     JOIN c_project p ON cp.c_phase_id = p.c_phase_id
JOIN cprojtyp pt ON p.c_projecttype_id = pt.c_projecttype_id;

