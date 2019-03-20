-- View: rv_hr_employeesalarychange

-- DROP VIEW rv_hr_employeesalarychange;

 SELECT e.ad_client_id,
    e.ad_org_id,
    e.isactive,
    e.created,
    e.createdby,
    e.updated,
    e.updatedby,
    e.value,
    e.taxid,
    e.name2,
    e.bpname,
    e.c_bpartner_id,
    e.c_bp_group_id,
    e.employeestatus,
    e.gender,
    e.birthday,
    e.maritalstatus,
    e.bloodgroup,
    e.placeofbirth_id,
    e.fathersname,
    e.marriageanniversarydate,
    e.paymentrule,
    e.hr_job_id,
    e.nationalcode,
    e.partnersname,
    e.identificationmark,
    e.ismanager,
    e.hr_employeetype_id,
    e.enddate,
    e.hr_department_id,
    e.sscode,
    e.hr_payroll_id,
    e.code,
    e.c_activity_id,
    e.startdate,
    e.hr_jobtype_id,
    e.hr_jobopening_id,
    e.hr_jobeducation_id,
    e.hr_careerlevel_id,
    e.hr_salaryrange_id,
    e.hr_salarystructure_id,
    e.hr_designation_id,
    e.hr_grade_id,
    e.c_project_id,
    e.ad_orgtrx_id,
    e.c_salesregion_id,
    e.hr_shiftgroup_id,
    e.hr_degree_id,
    e.c_campaign_id,
    e.hr_workgroup_id,
    COALESCE(ds.validfrom, ms.validfrom) AS validfrom,
    ms.amount AS monthlysalary,
    ds.amount AS dailysalary,
    COALESCE(ds.description, ms.description) AS description
     LEFT JOIN ( SELECT a.c_bpartner_id,
            a.validfrom,
                CASE
                    WHEN c.columntype = 'A' THEN a.amount
                    ELSE a.qty
                END AS amount,
            a.description
FROM hratr a
             JOIN hr_concept c ON c.hr_concept_id = a.hr_concept_id
          WHERE (c.columntype = ANY (ARRAY['A', 'Q'])) AND (EXISTS ( SELECT 1
JOIN hrctrt c_1 ON c_1.hr_contract_id = r.hr_contract_id
                  WHERE c_1.dailysalary_id = a.hr_concept_id))) ds ON ds.c_bpartner_id = e.c_bpartner_id
     LEFT JOIN ( SELECT a.c_bpartner_id,
            a.validfrom,
                CASE
                    WHEN c.columntype = 'A' THEN a.amount
                    ELSE a.qty
                END AS amount,
            a.description
FROM hratr a
             JOIN hr_concept c ON c.hr_concept_id = a.hr_concept_id
          WHERE (c.columntype = ANY (ARRAY['A', 'Q'])) AND (EXISTS ( SELECT 1
JOIN hrctrt c_1 ON c_1.hr_contract_id = r.hr_contract_id
                  WHERE c_1.monthlysalary_id = a.hr_concept_id))) ms ON ms.c_bpartner_id = e.c_bpartner_id;

