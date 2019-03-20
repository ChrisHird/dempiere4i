-- View: pp_order_node_v

-- DROP VIEW pp_order_node_v;

 SELECT onode.ad_client_id,
    onode.ad_org_id,
    onode.isactive,
    onode.created,
    onode.createdby,
    onode.updated,
    onode.updatedby,
    'en_US' AS ad_language,
    onode.name,
    onode.c_bpartner_id,
    onode.cost,
    onode.datefinish,
    onode.datefinishschedule,
    onode.datestart,
    onode.datestartschedule,
    onode.description,
    onode.docaction,
    onode.docstatus,
    onode.duration,
    onode.durationreal,
    onode.durationrequired,
    onode.help,
    onode.ismilestone,
    onode.issubcontracting,
    onode.movingtime,
    onode.overlapunits,
    onode.pp_order_id,
    onode.pp_order_workflow_id,
    onode.pp_order_node_id,
    onode.priority,
    onode.qtydelivered,
    onode.qtyrequired,
    onode.qtyscrap,
    onode.queuingtime,
    onode.s_resource_id,
    onode.setuptime,
    onode.setuptimereal,
    onode.unitscycles,
    onode.validfrom,
    onode.validto,
    onode.value,
    onode.waitingtime,
    onode.workingtime,
    onode.yield
FROM ppordn onode;
FROM ppordna onode;
FROM ppordnp onode;
FROM ppordnt onode;
FROM ppordnn onode;

