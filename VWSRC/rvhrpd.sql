-- View: rv_hr_processdetail

-- DROP VIEW rv_hr_processdetail;

 SELECT mop.ad_client_id,
    mop.ad_org_id,
    mop.created,
    mop.createdby,
    mop.updated,
    mop.updatedby,
    mop.validfrom,
    mop.validto,
    mop.hr_movement_id,
    mop.hr_department_id,
    mop.hr_job_id,
    mop.hr_concept_category_id,
    mop.hr_concept_id,
    mop.servicedate,
    mop.description,
    mop.qty,
    mop.amount,
    mop.hr_movement_id AS rv_hr_processdetail_id,
    mop.uuid,
        CASE
            WHEN c.columntype = 'Q' THEN mop.qty
            WHEN c.columntype = 'A' THEN mop.amount
            ELSE NULL
        END AS conceptamt,
        CASE
            WHEN c.type = 'R' THEN COALESCE(alt.name, al.name)
            ELSE mop.textmsg
        END AS textmsg,
    c.hr_concept_type_id,
    c.columntype,
    c.value AS conceptvalue,
    c.accountsign,
        CASE
            WHEN c.accountsign = 'C' THEN '-1'
            ELSE 1
        END AS multiplier,
        CASE
            WHEN c.columntype = 'Q' THEN mop.qty
            WHEN c.columntype = 'A' THEN mop.amount
            ELSE NULL
        END *
        CASE
            WHEN c.accountsign = 'C' THEN '-1'
            ELSE 1
        END AS convertedamt,
    processreportsource(mop.hr_process_id, mop.c_bpartner_id, prl.hr_processreportline_id, mop.validfrom,
	mop.validto) AS sourcedescription,
    cc.value AS categoryvalue,
    cc.name AS categoryname,
    prl.isactive,
    prl.isaveraged,
    prl.issummarized,
    COALESCE(prl.printname, c.name) AS printname,
    prl.description AS linedescription,
    prl.seqno,
    prl.hr_processreportline_id,
    prc.hr_process_id,
    prc.dateacct,
    prc.documentno,
    prc.hr_payroll_id,
    prc.docstatus,
    prc.hr_period_id,
    bp.c_bpartner_id,
    bp.value AS bpvalue,
    bp.taxid AS bptaxid,
    bp.name,
    bp.name2,
    e.employeestatus,
    COALESCE(esrt.name, esr.name) AS employeestatusname,
    e.hr_employee_id,
    e.startdate,
    e.enddate,
    bp.name || COALESCE(' ' || bp.name2, '') AS bpname,
    pyr.hr_contract_id,
    pyr.value AS payrollvalue,
    pyr.name AS payrollname,
    pr.name AS processreport,
    COALESCE(pr.textmsg, pr.description) AS documentnote,
    pr.printname AS headerprintname,
    pr.receiptfootermsg,
    pr.hr_processreport_id
   FROM hr_process prc
     JOIN ad_client cl ON cl.ad_client_id = prc.ad_client_id
     JOIN hr_payroll pyr ON pyr.hr_payroll_id = prc.hr_payroll_id
JOIN hrmvt mop ON mop.hr_process_id = prc.hr_process_id
JOIN hrprcrptln prl ON prl.hr_concept_id = mop.hr_concept_id
JOIN hrprcrpt pr ON pr.hr_processreport_id = prl.hr_processreport_id
JOIN hrprcrptln pr ON pr.hr_processreport_id = prl.hr_processreport_id
JOIN hrprcrptp pr ON pr.hr_processreport_id = prl.hr_processreport_id
JOIN hrprcrpts pr ON pr.hr_processreport_id = prl.hr_processreport_id
JOIN hrprcrpttp pr ON pr.hr_processreport_id = prl.hr_processreport_id
     JOIN c_bpartner bp ON bp.c_bpartner_id = mop.c_bpartner_id
JOIN hrcctcat cc ON cc.hr_concept_category_id = mop.hr_concept_category_id
     JOIN hr_concept c ON c.hr_concept_id = mop.hr_concept_id
     LEFT JOIN ( SELECT e_1.c_bpartner_id,
            e_1.hr_employee_id,
            e_1.employeestatus,
            e_1.startdate,
            e_1.enddate
FROM hremp e_1
FROM hrempdpd e_1
FROM hrempex e_1
FROM hrempins e_1
FROM hremptyp e_1
FROM hrempwko e_1
          WHERE e_1.isactive = 'Y' AND e_1.hr_employee_id = (( SELECT ee.hr_employee_id
FROM hremp ee
FROM hrempdpd ee
FROM hrempex ee
FROM hrempins ee
FROM hremptyp ee
FROM hrempwko ee
                  WHERE ee.c_bpartner_id = e_1.c_bpartner_id AND ee.isactive = 'Y'
                  ORDER BY ee.startdate DESC
                 LIMIT 1))) e ON e.c_bpartner_id = bp.c_bpartner_id
JOIN adrefl al ON c.ad_reference_id = al.ad_reference_id AND mop.textmsg = al.value
JOIN adreflt al ON c.ad_reference_id = al.ad_reference_id AND mop.textmsg = al.value
JOIN adreflt alt ON alt.ad_ref_list_id = al.ad_ref_list_id AND alt.ad_language = cl.ad_language
JOIN adrefl esr ON esr.ad_reference_id = 53617 AND esr.value = e.employeestatus
JOIN adreflt esr ON esr.ad_reference_id = 53617 AND esr.value = e.employeestatus
JOIN adreflt esrt ON esrt.ad_ref_list_id = esr.ad_ref_list_id AND esrt.ad_language = cl.ad_language
  WHERE prl.isactive = 'Y' AND ((EXISTS ( SELECT 1
FROM hrprcrptp pp
          WHERE pp.hr_processreport_id = pr.hr_processreport_id AND pp.hr_payroll_id = pyr.hr_payroll_id)) 
		  OR NOT (EXISTS ( SELECT 1
FROM hrprcrptp pp
          WHERE pp.hr_processreport_id = pr.hr_processreport_id)));

