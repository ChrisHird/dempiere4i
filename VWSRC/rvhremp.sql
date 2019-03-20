-- View: rv_hr_employee

-- DROP VIEW rv_hr_employee;

 SELECT bp.ad_client_id,
    bp.ad_org_id,
    bp.isactive,
    bp.created,
    bp.createdby,
    bp.updated,
    bp.updatedby,
    bp.value,
    bp.taxid,
    COALESCE(e.name, bp.name) AS name,
    COALESCE(e.name2, bp.name2) AS name2,
    COALESCE(e.name, bp.name) || COALESCE(' ' || COALESCE(e.name2, bp.name2), '') AS bpname,
    bp.c_bpartner_id,
    bp.c_bp_group_id,
    COALESCE(e.employeestatus, e.employeestatus) AS employeestatus,
    bp.gender,
    bp.birthday,
    COALESCE(e.maritalstatus, bp.maritalstatus) AS maritalstatus,
    bp.bloodgroup,
    bp.placeofbirth_id,
    bp.fathersname,
    e.marriageanniversarydate,
    COALESCE(e.paymentrule, bp.paymentrule) AS paymentrule,
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
    monthlysalary(bp.c_bpartner_id) AS monthlysalary,
    dailysalary(bp.c_bpartner_id) AS dailysalary,
    e.hr_contract_id
   FROM c_bpartner bp
     LEFT JOIN ( SELECT e_1.marriageanniversarydate,
            e_1.ad_user_id,
            e_1.hr_job_id,
            e_1.nationalcode,
            e_1.partnersname,
            e_1.nationality_id,
            e_1.maritalstatus,
            e_1.partnersbirthdate,
            e_1.hr_race_id,
            e_1.hr_skilltype_id,
            e_1.identificationmark,
            e_1.monthlysalary,
            e_1.dailysalary,
            e_1.employeestatus,
            e_1.paymentrule,
            e_1.ismanager,
            e_1.hr_employeetype_id,
            e_1.name,
            e_1.enddate,
            e_1.hr_department_id,
            e_1.isactive,
            e_1.sscode,
            e_1.hr_payroll_id,
            e_1.code,
            e_1.c_activity_id,
            e_1.c_bpartner_id,
            e_1.ad_org_id,
            e_1.startdate,
            e_1.updated,
            e_1.name2,
            e_1.hr_jobtype_id,
            e_1.hr_jobopening_id,
            e_1.hr_jobeducation_id,
            e_1.hr_careerlevel_id,
            e_1.hr_salaryrange_id,
            e_1.hr_salarystructure_id,
            e_1.hr_designation_id,
            e_1.hr_grade_id,
            e_1.c_project_id,
            e_1.ad_orgtrx_id,
            e_1.c_salesregion_id,
            e_1.hr_shiftgroup_id,
            e_1.hr_degree_id,
            e_1.c_campaign_id,
            e_1.hr_workgroup_id,
            p.hr_contract_id
FROM hremp e_1
FROM hrempdpd e_1
FROM hrempex e_1
FROM hrempins e_1
FROM hremptyp e_1
FROM hrempwko e_1
             LEFT JOIN hr_payroll p ON p.hr_payroll_id = e_1.hr_payroll_id
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
  WHERE bp.isemployee = 'Y';

