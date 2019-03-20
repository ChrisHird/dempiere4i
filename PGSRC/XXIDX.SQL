-- Index: a_asset_value

-- DROP INDEX a_asset_value;

CREATE UNIQUE INDEX a_asset_value FOR SYSTEM NAME a_astval
 ON a_asset  (ad_client_id, value);



-- Index: ad_attachment_record

-- DROP INDEX ad_attachment_record;

CREATE UNIQUE INDEX ad_attachment_record FOR SYSTEM NAME ad_atchrec
 ON adatch  (ad_table_id, record_id);



-- Index: ad_changelog_speed

-- DROP INDEX ad_changelog_speed;

CREATE INDEX ad_changelog_speed FOR SYSTEM NAME ad_chgspd
 ON adchgl  (ad_table_id, record_id);



-- Index: ad_client_name

-- DROP INDEX ad_client_name;

CREATE UNIQUE INDEX ad_client_name FOR SYSTEM NAME ad_cltnm
 ON ad_client  (name );



-- Index: ad_clientshare_table

-- DROP INDEX ad_clientshare_table;

CREATE UNIQUE INDEX ad_clientshare_table FOR SYSTEM NAME ad_cstbl
 ON adclntsh  (ad_client_id, ad_table_id);



-- Index: ad_column_name

-- DROP INDEX ad_column_name;

CREATE UNIQUE INDEX ad_column_name FOR SYSTEM NAME ad_colnm
 ON ad_column  (ad_table_id, columnname );



-- Index: ad_element_clientorg

-- DROP INDEX ad_element_clientorg;

CREATE INDEX ad_element_clientorg FOR SYSTEM NAME ad_elmco
 ON ad_element  (ad_client_id, ad_org_id);

-- Index: ad_element_name

-- DROP INDEX ad_element_name;

CREATE INDEX ad_element_name FOR SYSTEM NAME ad_elmnm
 ON ad_element  (name );

-- Index: ad_element_uppercolumnname

-- DROP INDEX ad_element_uppercolumnname;

CREATE UNIQUE INDEX ad_element_uppercolumnname FOR SYSTEM NAME ad_elmucn
 ON ad_element  (columnname);



-- Index: ad_field_column

-- DROP INDEX ad_field_column;

CREATE UNIQUE INDEX ad_field_column FOR SYSTEM NAME ad_fldcol
 ON ad_field  (ad_tab_id, ad_column_id);



-- Index: ad_fieldgroup_key

-- DROP INDEX ad_fieldgroup_key;

CREATE UNIQUE INDEX ad_fieldgroup_key FOR SYSTEM NAME ad_fgrpk
 ON adfldgrp  (ad_fieldgroup_id);



-- Index: ad_impformat_name

-- DROP INDEX ad_impformat_name;

CREATE UNIQUE INDEX ad_impformat_name FOR SYSTEM NAME ad_impfnm
 ON adimpfmt   (name );



-- Index: ad_ldapprocessorport

-- DROP INDEX ad_ldapprocessorport;

CREATE UNIQUE INDEX ad_ldapprocessorport FOR SYSTEM NAME ad_ldappp
 ON adldaprc  (ldapport);



-- Index: ad_message_value

-- DROP INDEX ad_message_value;

CREATE UNIQUE INDEX ad_message_value FOR SYSTEM NAME ad_msgval
 ON ad_message  (value );



-- Index: ad_note_key

-- DROP INDEX ad_note_key;

CREATE UNIQUE INDEX ad_note_key FOR SYSTEM NAME ad_ntkey
 ON ad_note  (ad_note_id);



-- Index: ad_org_value

-- DROP INDEX ad_org_value;

CREATE UNIQUE INDEX ad_org_value FOR SYSTEM NAME ad_orgval
 ON ad_org  (ad_client_id, value );



-- Index: ad_pinstance_record

-- DROP INDEX ad_pinstance_record;

CREATE INDEX ad_pinstance_record FOR SYSTEM NAME ad_pinstr
 ON adpinst  (ad_process_id, record_id);



-- Index: ad_preference_attribute

-- DROP INDEX ad_preference_attribute;

CREATE UNIQUE INDEX ad_preference_attribute FOR SYSTEM NAME ad_prfatr
 ON adpref  (ad_client_id, ad_org_id, ad_window_id, ad_user_id, attribute );



-- Index: ad_printcolor_name

-- DROP INDEX ad_printcolor_name;

CREATE UNIQUE INDEX ad_printcolor_name FOR SYSTEM NAME ad_prtcnm
 ON adprtclr  (ad_client_id, name );



-- Index: ad_printfont_name

-- DROP INDEX ad_printfont_name;

CREATE UNIQUE INDEX ad_printfont_name FOR SYSTEM NAME ad_prtfnm
 ON adprtfnt  (ad_client_id, name );



-- Index: ad_printform_client

-- DROP INDEX ad_printform_client;

CREATE UNIQUE INDEX ad_printform_client FOR SYSTEM NAME ad_prtfmc
 ON adprtfrm  (ad_client_id, ad_org_id);



-- Index: ad_printformat_name

-- DROP INDEX ad_printformat_name;

CREATE UNIQUE INDEX ad_printformat_name FOR SYSTEM NAME ad_pfmtnm
 ON adprtfmt  (ad_client_id, ad_table_id, name );

-- Index: ad_printformat_table

-- DROP INDEX ad_printformat_table;

CREATE INDEX ad_printformat_table FOR SYSTEM NAME ad_pfmttbl
 ON adprtfmt  (ad_table_id);



-- Index: ad_printformatitem_format

-- DROP INDEX ad_printformatitem_format;

CREATE INDEX ad_printformatitem_format FOR SYSTEM NAME ad_pfmtif
 ON adprtfi  (ad_printformat_id);



-- Index: ad_printpaper_name

-- DROP INDEX ad_printpaper_name;

CREATE UNIQUE INDEX ad_printpaper_name FOR SYSTEM NAME ad_prtpnm
 ON adprtp  (ad_client_id, name );



-- Index: ad_process_para_process

-- DROP INDEX ad_process_para_process;

CREATE INDEX ad_process_para_process FOR SYSTEM NAME ad_prcpp
 ON adprcp  (ad_process_id);

-- Index: ad_procpara_proccolumnname

-- DROP INDEX ad_procpara_proccolumnname;

CREATE UNIQUE INDEX ad_procpara_proccolumnname FOR SYSTEM NAME ad_prcppcn
 ON adprcp  (ad_process_id, columnname );



-- Index: ad_ref_list_value

-- DROP INDEX ad_ref_list_value;

CREATE UNIQUE INDEX ad_ref_list_value FOR SYSTEM NAME ad_rlstval
 ON adrefl  (ad_reference_id, value );



-- Index: ad_reference_name

-- DROP INDEX ad_reference_name;

CREATE UNIQUE INDEX ad_reference_name FOR SYSTEM NAME ad_refnm
 ON adref  (name );



-- Index: ad_replicationstrategy_value

-- DROP INDEX ad_replicationstrategy_value;

CREATE UNIQUE INDEX ad_replicationstrategy_value FOR SYSTEM NAME ad_repsval
 ON adreplstr  (ad_client_id, value );



-- Index: ad_sequence_name

-- DROP INDEX ad_sequence_name;

CREATE UNIQUE INDEX ad_sequence_name FOR SYSTEM NAME ad_seqnm
 ON adseq  (ad_client_id, name );



-- Index: ad_tab_table

-- DROP INDEX ad_tab_table;

CREATE INDEX ad_tab_table FOR SYSTEM NAME ad_tbtbl
 ON ad_tab  (ad_table_id);

-- Index: ad_tab_window

-- DROP INDEX ad_tab_window;

CREATE INDEX ad_tab_window FOR SYSTEM NAME ad_tbwin
 ON ad_tab  (ad_window_id);



-- Index: ad_table_name

-- DROP INDEX ad_table_name;

CREATE UNIQUE INDEX ad_table_name FOR SYSTEM NAME ad_tblnm
 ON ad_table  (tablename );



-- Index: ad_task_name

-- DROP INDEX ad_task_name;

CREATE UNIQUE INDEX ad_task_name FOR SYSTEM NAME ad_tsknm
 ON ad_task  (ad_client_id, name );



-- Index: ad_taskinstance_task

-- DROP INDEX ad_taskinstance_task;

CREATE INDEX ad_taskinstance_task FOR SYSTEM NAME ad_tskit
 ON adtski  (ad_task_id);



-- Index: ad_tree_name

-- DROP INDEX ad_tree_name;

CREATE UNIQUE INDEX ad_tree_name FOR SYSTEM NAME ad_trenm
 ON ad_tree  (ad_client_id, name );



-- Index: ad_treenode_parentid

-- DROP INDEX ad_treenode_parentid;

CREATE INDEX ad_treenode_parentid FOR SYSTEM NAME ad_trnpid
 ON adtreen  (parent_id);



-- Index: ad_treenodebp_parent

-- DROP INDEX ad_treenodebp_parent;

CREATE INDEX ad_treenodebp_parent FOR SYSTEM NAME ad_trnbpp
 ON adtreenbp  (parent_id);



-- Index: ad_treenodemm_parent

-- DROP INDEX ad_treenodemm_parent;

CREATE INDEX ad_treenodemm_parent FOR SYSTEM NAME ad_trnmmp
 ON adtreenmm  (parent_id);



-- Index: ad_treenodepr_parent

-- DROP INDEX ad_treenodepr_parent;

CREATE INDEX ad_treenodepr_parent FOR SYSTEM NAME ad_trnppar
 ON adtreenpr  (parent_id);



-- Index: ad_user_email

-- DROP INDEX ad_user_email;

CREATE INDEX ad_user_email FOR SYSTEM NAME ad_usrem
 ON ad_user  (email );

-- Index: ad_user_value

-- DROP INDEX ad_user_value;

CREATE INDEX ad_user_value FOR SYSTEM NAME ad_usrval
 ON ad_user  (ad_client_id, value );



-- Index: ad_user_role_key

-- DROP INDEX ad_user_role_key;

CREATE UNIQUE INDEX ad_user_role_key FOR SYSTEM NAME ad_usrrval
 ON adusrr  (ad_role_id, ad_user_id);



-- Index: ad_wf_activity_item

-- DROP INDEX ad_wf_activity_item;

CREATE INDEX ad_wf_activity_item FOR SYSTEM NAME ad_wfai
 ON adwfact  (ad_wf_process_id, ad_wf_node_id);

-- Index: ad_wf_activity_status

-- DROP INDEX ad_wf_activity_status;

CREATE INDEX ad_wf_activity_status FOR SYSTEM NAME ad_wfas
 ON adwfact  (wfstate, processed );

-- Index: ad_wf_activity_who

-- DROP INDEX ad_wf_activity_who;

CREATE INDEX ad_wf_activity_who FOR SYSTEM NAME ad_wfawho
 ON adwfact  (ad_wf_responsible_id, ad_user_id);



-- Index: ad_wf_eventaudit_parent

-- DROP INDEX ad_wf_eventaudit_parent;

CREATE INDEX ad_wf_eventaudit_parent FOR SYSTEM NAME ad_wfevtap
 ON adwfevtaud  (ad_wf_process_id, ad_wf_node_id);



-- Index: ad_wf_node_workflow

-- DROP INDEX ad_wf_node_workflow;

CREATE INDEX ad_wf_node_workflow FOR SYSTEM NAME ad_wfnwf
 ON ad_wf_node  (ad_workflow_id);



-- Index: ad_wf_process_workflow

-- DROP INDEX ad_wf_process_workflow;

CREATE INDEX ad_wf_process_workflow FOR SYSTEM NAME ad_wfpwf
 ON adwfprc  (ad_workflow_id);



-- Index: ad_wf_processdata_process

-- DROP INDEX ad_wf_processdata_process;

CREATE INDEX ad_wf_processdata_process FOR SYSTEM NAME ad_pdprc
 ON adwfpdta  (ad_wf_process_id);



-- Index: ad_window_name

-- DROP INDEX ad_window_name;

CREATE UNIQUE INDEX ad_window_name FOR SYSTEM NAME ad_winnm
 ON ad_window  (ad_client_id, name );



-- Index: ad_workflow_name

-- DROP INDEX ad_workflow_name;

CREATE UNIQUE INDEX ad_workflow_name FOR SYSTEM NAME ad_wfnm
 ON adwf  (ad_client_id, name );



-- Index: c_acctschema_name

-- DROP INDEX c_acctschema_name;

CREATE UNIQUE INDEX c_acctschema_name FOR SYSTEM NAME c_acsnm
 ON caccs  (ad_client_id, name );



-- Index: c_acctschema_element_schema

-- DROP INDEX c_acctschema_element_schema;

CREATE INDEX c_acctschema_element_schema FOR SYSTEM NAME c_acses
 ON caccse  (c_acctschema_id);



-- Index: c_activity_value

-- DROP INDEX c_activity_value;

CREATE UNIQUE INDEX c_activity_value FOR SYSTEM NAME c_actval
 ON c_activity  (ad_client_id, value );



-- Index: c_allocationline_invoice

-- DROP INDEX c_allocationline_invoice;

CREATE INDEX c_allocationline_invoice FOR SYSTEM NAME c_alcli
 ON calcln  (c_invoice_id);

-- Index: c_allocationline_payment

-- DROP INDEX c_allocationline_payment;

CREATE INDEX c_allocationline_payment FOR SYSTEM NAME c_alclp
 ON calcln  (c_payment_id);



-- Index: c_bankacct_bank

-- DROP INDEX c_bankacct_bank;

CREATE INDEX c_bankacct_bank FOR SYSTEM NAME c_babnk
 ON cbacct  (c_bank_id);



-- Index: c_bankstmtline_bankstmt

-- DROP INDEX c_bankstmtline_bankstmt;

CREATE INDEX c_bankstmtline_bankstmt FOR SYSTEM NAME c_bstmlbs
 ON cbstmtln  (c_bankstatement_id);



-- Index: c_bpbankacct_bpartner

-- DROP INDEX c_bpbankacct_bpartner;

CREATE INDEX c_bpbankacct_bpartner FOR SYSTEM NAME c_bpbabp
 ON cbpbacct  (c_bpartner_id);



-- Index: c_bp_group_value

-- DROP INDEX c_bp_group_value;

CREATE UNIQUE INDEX c_bp_group_value FOR SYSTEM NAME c_bpgval
 ON c_bp_group  (ad_client_id, value );



-- Index: c_bpartner_bporg

-- DROP INDEX c_bpartner_bporg;

CREATE INDEX c_bpartner_bporg FOR SYSTEM NAME c_bpbpo
 ON c_bpartner  (ad_orgbp_id);

-- Index: c_bpartner_name

-- DROP INDEX c_bpartner_name;

CREATE INDEX c_bpartner_name FOR SYSTEM NAME c_bpname
 ON c_bpartner  (name );

-- Index: c_bpartner_value

-- DROP INDEX c_bpartner_value;

CREATE UNIQUE INDEX c_bpartner_value FOR SYSTEM NAME c_bpval
 ON c_bpartner  (ad_client_id, value );



-- Index: c_bplocation_bpartner

-- DROP INDEX c_bplocation_bpartner;

CREATE INDEX c_bplocation_bpartner FOR SYSTEM NAME c_bplocbp
 ON cbploc  (c_bpartner_id);

-- Index: c_bplocation_updated

-- DROP INDEX c_bplocation_updated;

CREATE INDEX c_bplocation_updated FOR SYSTEM NAME c_bplocu
 ON cbploc  (updated);



-- Index: c_calendar_name

-- DROP INDEX c_calendar_name;

CREATE UNIQUE INDEX c_calendar_name FOR SYSTEM NAME c_calnm
 ON c_calendar  (ad_client_id, name );



-- Index: c_campaign_value

-- DROP INDEX c_campaign_value;

CREATE UNIQUE INDEX c_campaign_value FOR SYSTEM NAME c_cmpval
 ON c_campaign  (ad_client_id, value );



-- Index: c_cashline_cash

-- DROP INDEX c_cashline_cash;

CREATE INDEX c_cashline_cash FOR SYSTEM NAME c_cshlc
 ON c_cashline  (c_cash_id);



-- Index: c_channel_key

-- DROP INDEX c_channel_key;

CREATE UNIQUE INDEX c_channel_key FOR SYSTEM NAME c_chnkey
 ON c_channel  (c_channel_id);

-- Index: c_channel_name

-- DROP INDEX c_channel_name;

CREATE UNIQUE INDEX c_channel_name FOR SYSTEM NAME c_chnnm
 ON c_channel  (ad_client_id, name );



-- Index: c_charge_name

-- DROP INDEX c_charge_name;

CREATE UNIQUE INDEX c_charge_name FOR SYSTEM NAME c_crgnm
 ON c_charge  (ad_client_id, name );



-- Index: c_commissionamt_comline

-- DROP INDEX c_commissionamt_comline;

CREATE INDEX c_commissionamt_comline FOR SYSTEM NAME c_cmamtcl
 ON ccomamt  (c_commissionline_id);

-- Index: c_commissionamt_run

-- DROP INDEX c_commissionamt_run;

CREATE INDEX c_commissionamt_run FOR SYSTEM NAME c_cmamtr
 ON ccomamt  (c_commissionrun_id);



-- Index: c_commissionline_commission

-- DROP INDEX c_commissionline_commission;

CREATE INDEX c_commissionline_commission FOR SYSTEM NAME c_cmmlcm
 ON ccomln  (c_commission_id);



-- Index: c_conversionrate_once

-- DROP INDEX c_conversionrate_once;

CREATE INDEX c_conversionrate_once FOR SYSTEM NAME c_cvro
 ON ccvnr  (ad_client_id, ad_org_id, c_currency_id, c_currency_id_to, c_conversiontype_id, validfrom);



-- Index: c_countrycode

-- DROP INDEX c_countrycode;

CREATE UNIQUE INDEX c_countrycode FOR SYSTEM NAME c_cntyc
 ON c_country  (countrycode );



-- Index: c_currencyisocode

-- DROP INDEX c_currencyisocode;

CREATE UNIQUE INDEX c_currencyisocode FOR SYSTEM NAME c_curisoc
 ON c_currency  (iso_code );



-- Index: c_cycle_name

-- DROP INDEX c_cycle_name;

CREATE UNIQUE INDEX c_cycle_name FOR SYSTEM NAME c_cylnm
 ON c_cycle  (ad_client_id, name );



-- Index: c_doctype_name

-- DROP INDEX c_doctype_name;

CREATE UNIQUE INDEX c_doctype_name FOR SYSTEM NAME c_dtnm
 ON c_doctype  (ad_client_id, name );



-- Index: c_element_name

-- DROP INDEX c_element_name;

CREATE UNIQUE INDEX c_element_name FOR SYSTEM NAME c_elmnm
 ON c_element  (ad_client_id, name );



-- Index: c_elementvalue_name

-- DROP INDEX c_elementvalue_name;

CREATE INDEX c_elementvalue_name FOR SYSTEM NAME c_elmvnm
 ON celmval  (name );

-- Index: c_elementvalue_value

-- DROP INDEX c_elementvalue_value;

CREATE UNIQUE INDEX c_elementvalue_value FOR SYSTEM NAME c_elmvval
 ON celmval  (c_element_id, value );



-- Index: c_invoice_documentno

-- DROP INDEX c_invoice_documentno;

CREATE UNIQUE INDEX c_invoice_documentno FOR SYSTEM NAME c_invdno
 ON c_invoice  (documentno, c_doctype_id, c_bpartner_id);

-- Index: c_invoice_documentno_target

-- DROP INDEX c_invoice_documentno_target;

CREATE UNIQUE INDEX c_invoice_documentno_target FOR SYSTEM NAME c_invdntgt
 ON c_invoice  (c_bpartner_id, documentno, c_doctypetarget_id);

-- Index: c_invoice_key

-- DROP INDEX c_invoice_key;

CREATE UNIQUE INDEX c_invoice_key FOR SYSTEM NAME c_invkey
 ON c_invoice  (c_invoice_id);

-- Index: c_invoice_order

-- DROP INDEX c_invoice_order;

CREATE INDEX c_invoice_order FOR SYSTEM NAME c_invord
 ON c_invoice  (c_order_id);

-- Index: c_invoice_paid

-- DROP INDEX c_invoice_paid;

CREATE INDEX c_invoice_paid FOR SYSTEM NAME c_invpd
 ON c_invoice  (ad_client_id, ispaid );



-- Index: c_invoiceline_invoice

-- DROP INDEX c_invoiceline_invoice;

CREATE INDEX c_invoiceline_invoice FOR SYSTEM NAME c_invlinv
 ON cinvln  (c_invoice_id);

-- Index: c_invoiceline_orderline

-- DROP INDEX c_invoiceline_orderline;

CREATE INDEX c_invoiceline_orderline FOR SYSTEM NAME c_invlol
 ON cinvln  (c_orderline_id);

-- Index: c_invoiceline_product

-- DROP INDEX c_invoiceline_product;

CREATE INDEX c_invoiceline_product FOR SYSTEM NAME c_invlprd
 ON cinvln  (m_product_id);



-- Index: c_invoicepayschedule_invoice

-- DROP INDEX c_invoicepayschedule_invoice;

CREATE INDEX c_invoicepayschedule_invoice FOR SYSTEM NAME c_invpsi
 ON cinvps  (c_invoice_id);



-- Index: c_order_bpartner

-- DROP INDEX c_order_bpartner;

CREATE INDEX c_order_bpartner FOR SYSTEM NAME c_ordbp
 ON c_order  (c_bpartner_id);

-- Index: c_order_documentno

-- DROP INDEX c_order_documentno;

CREATE UNIQUE INDEX c_order_documentno FOR SYSTEM NAME c_orddn
 ON c_order  (documentno, c_doctype_id, c_bpartner_id);

-- Index: c_order_processed

-- DROP INDEX c_order_processed;

CREATE INDEX c_order_processed FOR SYSTEM NAME c_ordprc
 ON c_order  (ad_client_id, processed );



-- Index: c_orderline_order

-- DROP INDEX c_orderline_order;

CREATE INDEX c_orderline_order FOR SYSTEM NAME c_olnord
 ON cordln  (c_order_id);

-- Index: c_orderline_product

-- DROP INDEX c_orderline_product;

CREATE INDEX c_orderline_product FOR SYSTEM NAME c_olnprd
 ON cordln  (m_product_id);



-- Index: cordersource_value

-- DROP INDEX cordersource_value;

CREATE UNIQUE INDEX cordersource_value FOR SYSTEM NAME cosval
 ON cordsrc  (ad_client_id, value );



-- Index: c_payment_bankaccount

-- DROP INDEX c_payment_bankaccount;

CREATE INDEX c_payment_bankaccount FOR SYSTEM NAME c_pmtba
 ON c_payment  (c_bankaccount_id);

-- Index: c_payment_bpartner

-- DROP INDEX c_payment_bpartner;

CREATE INDEX c_payment_bpartner FOR SYSTEM NAME c_pmtpkey
 ON c_payment  (c_bpartner_id);



-- Index: c_paymentprocessor_key

-- DROP INDEX c_paymentprocessor_key;

CREATE UNIQUE INDEX c_paymentprocessor_key FOR SYSTEM NAME c_pmtpk
 ON cpayp  (c_paymentprocessor_id);



-- Index: c_paymentterm_name

-- DROP INDEX c_paymentterm_name;

CREATE UNIQUE INDEX c_paymentterm_name FOR SYSTEM NAME c_pmttnm
 ON cpaytrm  (ad_client_id, name );



-- Index: c_payselline_paysel

-- DROP INDEX c_payselline_paysel;

CREATE INDEX c_payselline_paysel FOR SYSTEM NAME c_pslps
 ON cpayselln  (c_payselection_id);



-- Index: c_period_nounique

-- DROP INDEX c_period_nounique;

CREATE UNIQUE INDEX c_period_nounique FOR SYSTEM NAME c_pdnu
 ON c_period  (c_year_id, periodno);



-- Index: c_project_value

-- DROP INDEX c_project_value;

CREATE UNIQUE INDEX c_project_value FOR SYSTEM NAME c_prjv
 ON c_project  (ad_client_id, value );



-- Index: c_region_name

-- DROP INDEX c_region_name;

CREATE UNIQUE INDEX c_region_name FOR SYSTEM NAME c_rgnnm
 ON c_region  (c_country_id, name );



-- Index: c_revenuerecognition_key

-- DROP INDEX c_revenuerecognition_key;

CREATE UNIQUE INDEX c_revenuerecognition_key FOR SYSTEM NAME c_revrkey
 ON crevrcgn  (c_revenuerecognition_id);



-- Index: c_salesregion_value

-- DROP INDEX c_salesregion_value;

CREATE UNIQUE INDEX c_salesregion_value FOR SYSTEM NAME c_slsrval
 ON csrgn  (ad_client_id, value );



-- Index: c_tax_key

-- DROP INDEX c_tax_key;

CREATE UNIQUE INDEX c_tax_key
 ON c_tax  (c_tax_id);

-- Index: c_tax_name

-- DROP INDEX c_tax_name;

CREATE UNIQUE INDEX c_tax_name
 ON c_tax  (ad_client_id, name );



-- Index: c_taxcategory_name

-- DROP INDEX c_taxcategory_name;

CREATE UNIQUE INDEX c_taxcategory_name FOR SYSTEM NAME c_txcatnm
 ON ctaxcat  (ad_client_id, name );



-- Index: c_uom_name

-- DROP INDEX c_uom_name;

CREATE UNIQUE INDEX c_uom_name
 ON c_uom  (ad_client_id, name );

-- Index: c_uom_x12

-- DROP INDEX c_uom_x12;

CREATE INDEX c_uom_x12
 ON c_uom  (x12de355 );



-- Index: c_uom_conversion_product

-- DROP INDEX c_uom_conversion_product;

CREATE UNIQUE INDEX c_uom_conversion_product FOR SYSTEM NAME c_umcprd
 ON cuomcvn  (c_uom_id, c_uom_to_id, m_product_id);



-- Index: c_validcombination_alias

-- DROP INDEX c_validcombination_alias;

CREATE INDEX c_validcombination_alias FOR SYSTEM NAME c_vcbna
 ON cvalcbn  (ad_client_id, alias );

-- Index: c_validcombination_alt

-- DROP INDEX c_validcombination_alt;

CREATE UNIQUE INDEX c_validcombination_alt FOR SYSTEM NAME c_vcbnalt
 ON cvalcbn  (c_acctschema_id, ad_org_id, account_id, c_subacct_id, m_product_id, c_bpartner_id, ad_orgtrx_id, c_locfrom_id,
   c_locto_id, c_salesregion_id, c_project_id, c_campaign_id, c_activity_id, user1_id, user2_id, userelement1_id,
   userelement2_id);



-- Index: c_year_name

-- DROP INDEX c_year_name;

CREATE UNIQUE INDEX c_year_name FOR SYSTEM NAME c_yrnm
 ON c_year  (c_calendar_id, fiscalyear );



-- Index: cm_chattype_table

-- DROP INDEX cm_chattype_table;

CREATE UNIQUE INDEX cm_chattype_table FOR SYSTEM NAME cm_cttbl
 ON cmctyp  (ad_client_id, ad_table_id);



-- Index: cm_cstage_element_name

-- DROP INDEX cm_cstage_element_name;

CREATE UNIQUE INDEX cm_cstage_element_name FOR SYSTEM NAME cm_cselnm
 ON cmcse  (cm_cstage_id, name );



-- Index: fact_acct_account

-- DROP INDEX fact_acct_account;

CREATE INDEX fact_acct_account FOR SYSTEM NAME fact_aa
 ON fact_acct  (ad_client_id, ad_org_id, c_acctschema_id, account_id);

-- Index: fact_acct_dateacct

-- DROP INDEX fact_acct_dateacct;

CREATE INDEX fact_acct_dateacct FOR SYSTEM NAME fact_adta
 ON fact_acct  (dateacc);

-- Index: fact_acct_trunc_dateacct

-- DROP INDEX fact_acct_trunc_dateacct;

CREATE INDEX fact_acct_trunc_dateacct FOR SYSTEM NAME fact_atda
 ON fact_acct  (dateacc);



-- Index: fas_account

-- DROP INDEX fas_account;

CREATE INDEX fas_account FOR SYSTEM NAME fas_acct
 ON factacsm  (ad_client_id, ad_org_id, c_acctschema_id, account_id);

-- Index: fas_dateacct

-- DROP INDEX fas_dateacct;

CREATE INDEX fas_dateacct FOR SYSTEM NAME fas_dteact
 ON factacsm  (dateacct);

-- Index: fas_period

-- DROP INDEX fas_period;

CREATE INDEX fas_pd
 ON factacsm  (c_period_id);

-- Index: fas_reportcube

-- DROP INDEX fas_reportcube;

CREATE INDEX fas_reportcube FOR SYSTEM NAME fas_rcbe
 ON factacsm  (pa_reportcube_id);



-- Index: fact_matchcode

-- DROP INDEX fact_matchcode;

CREATE INDEX fact_matchcode FOR SYSTEM NAME fact_mcde
 ON tactrecn  (matchcode );



-- Index: gl_budget_name

-- DROP INDEX gl_budget_name;

CREATE UNIQUE INDEX gl_budget_name FOR SYSTEM NAME gl_bnm
 ON gl_budget  (ad_client_id, name );



-- Index: gl_category_name

-- DROP INDEX gl_category_name;

CREATE UNIQUE INDEX gl_category_name FOR SYSTEM NAME gl_catnm
 ON glcat  (ad_client_id, name );



-- Index: gl_journal_docno

-- DROP INDEX gl_journal_docno;

CREATE UNIQUE INDEX gl_journal_docno FOR SYSTEM NAME gl_jrndn
 ON gl_journal  (ad_org_id, c_period_id, documentno );



-- Index: gl_journalbatch_docno

-- DROP INDEX gl_journalbatch_docno;

CREATE UNIQUE INDEX gl_journalbatch_docno FOR SYSTEM NAME gl_jrnbdn
 ON gljrnbch  (ad_org_id, c_period_id, documentno );



-- Index: gl_journalline_key

-- DROP INDEX gl_journalline_key;

CREATE UNIQUE INDEX gl_journalline_key FOR SYSTEM NAME gl_jrnlk
 ON gljrnln  (gl_journalline_id);



-- Index: uk_hr_concept_value

-- DROP INDEX uk_hr_concept_value;

CREATE UNIQUE INDEX uk_hr_concept_value FOR SYSTEM NAME uk_hrcval
 ON hr_concept  (ad_client_id, value );



-- Index: hr_contract_value

-- DROP INDEX hr_contract_value;

CREATE UNIQUE INDEX hr_contract_value FOR SYSTEM NAME hr_cval
 ON hrctrt  (ad_client_id, value );



-- Index: idx_hr_movement_c_bpartner_id

-- DROP INDEX idx_hr_movement_c_bpartner_id;

CREATE INDEX idx_hr_movement_c_bpartner_id FOR SYSTEM NAME idx_hmcbi
 ON hrmvt  (c_bpartner_id);

-- Index: idx_hr_movement_hr_concept_id

-- DROP INDEX idx_hr_movement_hr_concept_id;

CREATE INDEX idx_hr_movement_hr_concept_id FOR SYSTEM NAME idx_hmhci
 ON hrmvt  (hr_concept_id);

-- Index: idx_hr_movement_servicedate

-- DROP INDEX idx_hr_movement_servicedate;

CREATE INDEX idx_hr_movement_servicedate FOR SYSTEM NAME idx_hmsdte
 ON hrmvt  (servicedate);

-- Index: idx_hr_movement_validfrom

-- DROP INDEX idx_hr_movement_validfrom;

CREATE INDEX idx_hr_movement_validfrom FOR SYSTEM NAME idx_hmvfrm
 ON hrmvt  (validfrom);



-- Index: k_index_keyword

-- DROP INDEX k_index_keyword;

CREATE INDEX k_index_keyword FOR SYSTEM NAME k_idxkey
 ON k_index  (ad_client_id, keyword );



-- Index: k_indexstop_keyword

-- DROP INDEX k_indexstop_keyword;

CREATE INDEX k_indexstop_keyword FOR SYSTEM NAME k_idxskw
 ON kidxstp  (ad_client_id, keyword );



-- Index: m_bom_productversiontype

-- DROP INDEX m_bom_productversiontype;

CREATE UNIQUE INDEX m_bom_productversiontype FOR SYSTEM NAME m_bpvtyp
 ON m_bom  (m_product_id, m_changenotice_id);



-- Index: m_costdetail_asi

-- DROP INDEX m_costdetail_asi;

CREATE INDEX m_costdetail_asi FOR SYSTEM NAME m_cdetasi
 ON mcstdet  (m_attributesetinstance_id);

-- Index: m_costdetail_product

-- DROP INDEX m_costdetail_product;

CREATE INDEX m_costdetail_product FOR SYSTEM NAME m_cdetprd
 ON mcstdet  (m_product_id, processed );



-- Index: m_costqueue_product

-- DROP INDEX m_costqueue_product;

CREATE INDEX m_costqueue_product FOR SYSTEM NAME m_cqprd
 ON mcstq  (c_acctschema_id, m_product_id, m_costelement_id);



-- Index: m_edi_trx

-- DROP INDEX m_edi_trx;

CREATE UNIQUE INDEX m_edi_trx
 ON m_edi  (c_bp_edi_id, documentno, line);



-- Index: m_freightcat_value

-- DROP INDEX m_freightcat_value;

CREATE UNIQUE INDEX m_freightcat_value FOR SYSTEM NAME m_fghcv
 ON mfhtcat  (ad_client_id, value );



-- Index: m_inout_bpartner

-- DROP INDEX m_inout_bpartner;

CREATE INDEX m_inout_bpartner FOR SYSTEM NAME m_iobp
 ON m_inout  (c_bpartner_id);

-- Index: m_inout_documentno

-- DROP INDEX m_inout_documentno;

CREATE INDEX m_inout_documentno FOR SYSTEM NAME m_iodn
 ON m_inout  (documentno );

-- Index: m_inout_order

-- DROP INDEX m_inout_order;

CREATE INDEX m_inout_order FOR SYSTEM NAME m_ioord
 ON m_inout  (c_order_id);



-- Index: m_inoutline_inout

-- DROP INDEX m_inoutline_inout;

CREATE INDEX m_inoutline_inout FOR SYSTEM NAME m_iolio
 ON mioln  (m_inout_id);

-- Index: m_inoutline_product

-- DROP INDEX m_inoutline_product;

CREATE INDEX m_inoutline_product FOR SYSTEM NAME m_iolprd
 ON mioln  (m_product_id);



-- Index: m_inventoryline_productlocattr

-- DROP INDEX m_inventoryline_productlocattr;

CREATE UNIQUE INDEX m_inventoryline_productlocattr FOR SYSTEM NAME m_ivtlpla
 ON mivtln  (m_inventory_id, m_locator_id, m_product_id, m_attributesetinstance_id);



-- Index: m_location_where

-- DROP INDEX m_location_where;

CREATE UNIQUE INDEX m_location_where FOR SYSTEM NAME m_locw
 ON m_locator  (m_warehouse_id, x , y , z );



-- Index: m_matchinv_ship

-- DROP INDEX m_matchinv_ship;

CREATE INDEX m_matchinv_ship FOR SYSTEM NAME m_misp
 ON m_matchinv  (c_invoiceline_id, m_inoutline_id);



-- Index: m_matchpo_ship

-- DROP INDEX m_matchpo_ship;

CREATE INDEX m_matchpo_ship FOR SYSTEM NAME m_mposp
 ON m_matchpo  (c_orderline_id, m_inoutline_id);



-- Index: m_movementline_movement

-- DROP INDEX m_movementline_movement;

CREATE INDEX m_movementline_movement FOR SYSTEM NAME m_mlmvt
 ON mmovln  (m_movement_id);



-- Index: m_pricelist_name

-- DROP INDEX m_pricelist_name;

CREATE UNIQUE INDEX m_pricelist_name FOR SYSTEM NAME m_plnm
 ON mplst  (ad_client_id, name );



-- Index: m_product_expensetype

-- DROP INDEX m_product_expensetype;

CREATE UNIQUE INDEX m_product_expensetype FOR SYSTEM NAME m_prdetyp
 ON m_product  (s_expensetype_id);

-- Index: m_product_name

-- DROP INDEX m_product_name;

CREATE INDEX m_product_name FOR SYSTEM NAME m_prdnm
 ON m_product  (name );

-- Index: m_product_productcategory

-- DROP INDEX m_product_productcategory;

CREATE INDEX m_product_productcategory FOR SYSTEM NAME m_prdpc
 ON m_product  (m_product_category_id);

-- Index: m_product_resource

-- DROP INDEX m_product_resource;

CREATE UNIQUE INDEX m_product_resource FOR SYSTEM NAME m_prdrsc
 ON m_product  (s_resource_id);

-- Index: m_product_upc

-- DROP INDEX m_product_upc;

CREATE INDEX m_product_upc FOR SYSTEM NAME m_prdupc
 ON m_product  (upc );

-- Index: m_product_value

-- DROP INDEX m_product_value;

CREATE UNIQUE INDEX m_product_value FOR SYSTEM NAME m_prdval
 ON m_product  (ad_client_id, value );



-- Index: m_product_category_value

-- DROP INDEX m_product_category_value;

CREATE UNIQUE INDEX m_product_category_value FOR SYSTEM NAME m_prdcval
 ON mprodcat  (ad_client_id, value );



-- Index: m_product_po_vendorprodno

-- DROP INDEX m_product_po_vendorprodno;

CREATE UNIQUE INDEX m_product_po_vendorprodno FOR SYSTEM NAME m_ppocpo
 ON mprodpo  (c_bpartner_id, vendorproductno );



-- Index: m_productionline_key

-- DROP INDEX m_productionline_key;

CREATE UNIQUE INDEX m_productionline_key FOR SYSTEM NAME m_plnkey
 ON mpdnln  (m_productionline_id);

-- Index: m_productionline_prodplan

-- DROP INDEX m_productionline_prodplan;

CREATE INDEX m_productionline_prodplan FOR SYSTEM NAME m_plppln
 ON mpdnln  (m_productionplan_id);



-- Index: m_productionplan_production

-- DROP INDEX m_productionplan_production;

CREATE INDEX m_productionplan_production FOR SYSTEM NAME m_pplnp
 ON mpdnpln  (m_production_id);



-- Index: m_shipper_name

-- DROP INDEX m_shipper_name;

CREATE UNIQUE INDEX m_shipper_name FOR SYSTEM NAME m_shpnm
 ON m_shipper  (ad_client_id, name );



-- Index: m_transsaction_product

-- DROP INDEX m_transsaction_product;

CREATE INDEX m_transsaction_product FOR SYSTEM NAME m_trnprd
 ON mtrn  (m_product_id);



-- Index: m_transactionallocation_prd

-- DROP INDEX m_transactionallocation_prd;

CREATE INDEX m_transactionallocation_prd FOR SYSTEM NAME m_trnalcp
 ON mtrnalc  (m_product_id, m_attributesetinstance_id, isallocated );



-- Index: m_warehouse_name

-- DROP INDEX m_warehouse_name;

CREATE UNIQUE INDEX m_warehouse_name FOR SYSTEM NAME m_whnm
 ON mwhse  (ad_client_id, name );



-- Index: fki_pa_reportcolumn_pareportsource

-- DROP INDEX fki_pa_reportcolumn_pareportsource;

CREATE INDEX fki_pa_reportcolumn_pareportsource FOR SYSTEM NAME fki_prcps
 ON parptsrc  (pa_reportcolumn_id);



-- Index: pp_order_bomlinema_key

-- DROP INDEX pp_order_bomlinema_key;

CREATE UNIQUE INDEX pp_order_bomlinema_key FOR SYSTEM NAME pp_oblnk
 ON ppcstcolrm  (pp_cost_collectorma_id);



-- Index: ppproductbomunique

-- DROP INDEX ppproductbomunique;

CREATE UNIQUE INDEX ppproductbomunique FOR SYSTEM NAME pppbu
 ON ppprdbom  (ad_client_id, value );



-- Index: r_knownissue_alt

-- DROP INDEX r_knownissue_alt;

CREATE UNIQUE INDEX r_knownissue_alt FOR SYSTEM NAME r_kialt
 ON risskn  (issuesummary, releaseno , sourceclassname , sourcemethodname ,
    loggername , lineno);



-- Index: r_issueproject_name

-- DROP INDEX r_issueproject_name;

CREATE INDEX r_issueproject_name FOR SYSTEM NAME r_iprnm
 ON rissprj  (name );



-- Index: r_issuesource_spo

-- DROP INDEX r_issuesource_spo;

CREATE UNIQUE INDEX r_issuesource_spo FOR SYSTEM NAME r_isrcspo
 ON risssrc  (r_issuesystem_id, r_issueproject_id, r_issueuser_id);



-- Index: r_issuesystem_address

-- DROP INDEX r_issuesystem_address;

CREATE UNIQUE INDEX r_issuesystem_address FOR SYSTEM NAME r_isysadr
 ON risssys  (dbaddress );



-- Index: r_issueuser_email

-- DROP INDEX r_issueuser_email;

CREATE UNIQUE INDEX r_issueuser_email FOR SYSTEM NAME r_iuem
 ON rissusr  (username , ad_client_id);



-- Index: r_request_bpartner

-- DROP INDEX r_request_bpartner;

CREATE INDEX r_request_bpartner FOR SYSTEM NAME r_reqbp
 ON r_request  (c_bpartner_id);

-- Index: r_request_user

-- DROP INDEX r_request_user;

CREATE INDEX r_request_user FOR SYSTEM NAME r_requsr
 ON r_request  (ad_user_id);



-- Index: trec_matchcode

-- DROP INDEX trec_matchcode;

CREATE INDEX trec_matchcode FOR SYSTEM NAME trec_mcde
 ON trecon  (matchcode );



-- Index: u_posterminal_value

-- DROP INDEX u_posterminal_value;

CREATE UNIQUE INDEX u_posterminal_value FOR SYSTEM NAME u_postv
 ON upostm  (ad_client_id, value );



-- Index: w_basket_cbpartner

-- DROP INDEX w_basket_cbpartner;

CREATE INDEX w_basket_cbpartner FOR SYSTEM NAME w_bbp
 ON w_basket  (c_bpartner_id);

-- Index: w_basket_session

-- DROP INDEX w_basket_session;

CREATE UNIQUE INDEX w_basket_session FOR SYSTEM NAME w_bses
 ON w_basket  (session_id );



-- Index: w_clickcount_targeturl

-- DROP INDEX w_clickcount_targeturl;

CREATE UNIQUE INDEX w_clickcount_targeturl FOR SYSTEM NAME w_cctgtu
 ON wclkcnt  (ad_client_id, targeturl );



-- Index: w_countercount_pageurl

-- DROP INDEX w_countercount_pageurl;

CREATE UNIQUE INDEX w_countercount_pageurl FOR SYSTEM NAME w_ccntpu
 ON wcntc  (ad_client_id, pageurl );



-- Index: w_mailmsg_wstore

-- DROP INDEX w_mailmsg_wstore;

CREATE UNIQUE INDEX w_mailmsg_wstore FOR SYSTEM NAME w_mmwstr
 ON w_mailmsg  (w_store_id, mailmsgtype );



-- Index: w_store_webcontext

-- DROP INDEX w_store_webcontext;

CREATE UNIQUE INDEX w_store_webcontext FOR SYSTEM NAME w_swebc
 ON w_store  (webcontext );



