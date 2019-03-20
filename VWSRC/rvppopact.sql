-- View: rv_pp_operation_activity

-- DROP VIEW rv_pp_operation_activity;

 SELECT n.ad_client_id,
    n.ad_org_id,
    n.created,
    n.createdby,
    n.isactive,
    n.updated,
    n.updatedby,
    n.pp_order_id,
    n.docstatus,
    n.value,
    n.s_resource_id,
    n.durationrequired,
    n.durationreal,
    n.durationrequired - n.durationreal AS duration,
    n.qtydelivered,
    n.qtyreject,
    n.qtyscrap,
    n.datestartschedule,
    n.datefinishschedule
FROM ppordn n;
FROM ppordna n;
FROM ppordnp n;
FROM ppordnt n;
FROM ppordnn n;

