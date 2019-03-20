
--
-- Table : a_asset : a_asset
--

ALTER TABLE a_asset ADD
  CONSTRAINT aassetclass_aasset FOREIGN KEY (a_asset_class_id)
      REFERENCES aasstcls (a_asset_class_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT aassetgroup_aasset FOREIGN KEY (a_asset_group_id)
      REFERENCES aasstgrp (a_asset_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT aassetsplit_aasset FOREIGN KEY (a_asset_split_id)
      REFERENCES aasstsplit (a_asset_split_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT aassettype_aasset FOREIGN KEY (a_asset_type_id)
      REFERENCES aassttyp (a_asset_type_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT aduser_aasset FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT aparentasset_aasset FOREIGN KEY (a_parent_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT cactivity_aasset FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT cbpartner_aasset FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT cbpartnersr_aasset FOREIGN KEY (c_bpartnersr_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT cbplocation_aasset FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT clocation_aasset FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT cproject_aasset FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT leasebpartner_aasset FOREIGN KEY (lease_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT mattributesetinstance_aasset FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT minoutline_aasset FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT mlocator_aasset FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE a_asset ADD
  CONSTRAINT mproduct_aasset FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_acct : aasstac
--

ALTER TABLE aasstac ADD
  CONSTRAINT aasset_aassetacct FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE aasstac ADD
  CONSTRAINT aassetspread_aassetacct FOREIGN KEY (a_asset_spread_id)
      REFERENCES aasstsprd (a_asset_spread_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstac ADD
  CONSTRAINT adepreciation_aassetacct FOREIGN KEY (a_depreciation_id)
      REFERENCES adep (a_depreciation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstac ADD
  CONSTRAINT adepreciationconv_aassetacct FOREIGN KEY (a_depreciation_conv_id)
      REFERENCES adepconv (a_depreciation_convention_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstac ADD
  CONSTRAINT adepreciationconvf_aassetacct FOREIGN KEY (a_depreciation_conv_f_id)
      REFERENCES adepconv (a_depreciation_convention_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstac ADD
  CONSTRAINT adepreciationf_aassetacct FOREIGN KEY (a_depreciation_f_id)
      REFERENCES adep (a_depreciation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstac ADD
  CONSTRAINT adepreciationmethod_aassetacct FOREIGN KEY (a_depreciation_method_id)
      REFERENCES adepmthd (a_depreciation_method_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstac ADD
  CONSTRAINT adepreciationmethodf_aassetacc FOREIGN KEY (a_depreciation_method_f_id)
      REFERENCES adepmthd (a_depreciation_method_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstac ADD
  CONSTRAINT adepreciationtableheader_aasse FOREIGN KEY (a_depreciation_table_header_id)
      REFERENCES adepthdr (a_depreciation_table_header_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstac ADD
  CONSTRAINT cacctschema_aassetacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_addition : aasstadd
--

ALTER TABLE aasstadd ADD
  CONSTRAINT aasset_aassetaddition FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstadd ADD
  CONSTRAINT ccharge_aassetaddition FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstadd ADD
  CONSTRAINT cconversiontype_aassetaddition FOREIGN KEY (c_conversiontype_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstadd ADD
  CONSTRAINT ccurrency_aassetaddition FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstadd ADD
  CONSTRAINT cdoctype_aassetaddition FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstadd ADD
  CONSTRAINT cinvoice_aassetaddition FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstadd ADD
  CONSTRAINT cinvoiceline_aassetaddition FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstadd ADD
  CONSTRAINT cproject_aassetaddition FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstadd ADD
  CONSTRAINT gljournalbatch_aassetaddition FOREIGN KEY (gl_journalbatch_id)
      REFERENCES gljrnbch (gl_journalbatch_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstadd ADD
  CONSTRAINT ifixedasset_aassetaddition FOREIGN KEY (i_fixedasset_id)
      REFERENCES ifasst (i_fixedasset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstadd ADD
  CONSTRAINT minoutline_aassetaddition FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstadd ADD
  CONSTRAINT mmatchinv_aassetaddition FOREIGN KEY (m_matchinv_id)
      REFERENCES m_matchinv (m_matchinv_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstadd ADD
  CONSTRAINT mproduct_aassetaddition FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_change : aasstchg
--

ALTER TABLE aasstchg ADD
  CONSTRAINT aaaddition_aachange FOREIGN KEY (a_asset_addition_id)
      REFERENCES aasstadd (a_asset_addition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstchg ADD
  CONSTRAINT aaretirement_aachange FOREIGN KEY (a_asset_retirement_id)
      REFERENCES aasstret (a_asset_retirement_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstchg ADD
  CONSTRAINT aasset_aassetchange FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstchg ADD
  CONSTRAINT adepreciationtableheader_aass2 FOREIGN KEY (a_depreciation_table_header_id)
      REFERENCES adepthdr (a_depreciation_table_header_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstchg ADD
  CONSTRAINT aduser_aassetchange FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstchg ADD
  CONSTRAINT aparentasset_aassetchange FOREIGN KEY (a_parent_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstchg ADD
  CONSTRAINT cacctschema_aassetchange FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstchg ADD
  CONSTRAINT cbpartner_aassetchange FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstchg ADD
  CONSTRAINT cbpartnerlocation_aassetchange FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstchg ADD
  CONSTRAINT clocation_aassetchange FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_change_amt : aasstchga
--

ALTER TABLE aasstchga ADD
  CONSTRAINT aassetchange_aassetchangeamt FOREIGN KEY (a_asset_change_id)
      REFERENCES aasstchg (a_asset_change_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstchga ADD
  CONSTRAINT cacctschema_aassetchangeamt FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_class : aasstcls
--


--
-- Table : a_asset_delivery : aasstdel
--

ALTER TABLE aasstdel ADD
  CONSTRAINT aasset_aassetdelivery FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstdel ADD
  CONSTRAINT aduser_aassetdelivery FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstdel ADD
  CONSTRAINT moutline_aassetdelivery FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE aasstdel ADD
  CONSTRAINT mproductdl_aassetdelivery FOREIGN KEY (m_productdownload_id)
      REFERENCES mprddl (m_productdownload_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_disposed : aasstdsp
--

ALTER TABLE aasstdsp ADD
  CONSTRAINT aasset_aassetdisposed FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstdsp ADD
  CONSTRAINT aassettrade_aassetdisposed FOREIGN KEY (a_asset_trade_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstdsp ADD
  CONSTRAINT cdoctype_aassetdisposed FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstdsp ADD
  CONSTRAINT cinvoice_aassetdisposed FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstdsp ADD
  CONSTRAINT cinvoiceline_aassetdisposed FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstdsp ADD
  CONSTRAINT cperiod_aassetdisposed FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_group : aasstgrp
--

ALTER TABLE aasstgrp ADD
  CONSTRAINT aassetclass_aassetgroup FOREIGN KEY (a_asset_class_id)
      REFERENCES aasstcls (a_asset_class_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstgrp ADD
  CONSTRAINT aassettype_aassetgroup FOREIGN KEY (a_asset_type_id)
      REFERENCES aassttyp (a_asset_type_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_group_acct : aasstgrpa
--

ALTER TABLE aasstgrpa ADD
  CONSTRAINT aassetgroup_aassetgroupacct FOREIGN KEY (a_asset_group_id)
      REFERENCES aasstgrp (a_asset_group_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE aasstgrpa ADD
  CONSTRAINT adepreciation_aassetgroupacct FOREIGN KEY (a_depreciation_id)
      REFERENCES adep (a_depreciation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstgrpa ADD
  CONSTRAINT adepreciationconv_aassetgroupa FOREIGN KEY (a_depreciation_conv_id)
      REFERENCES adepconv (a_depreciation_convention_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstgrpa ADD
  CONSTRAINT adepreciationconvf_aassetgroup FOREIGN KEY (a_depreciation_conv_f_id)
      REFERENCES adepconv (a_depreciation_convention_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstgrpa ADD
  CONSTRAINT adepreciationf_aassetgroupacct FOREIGN KEY (a_depreciation_f_id)
      REFERENCES adep (a_depreciation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstgrpa ADD
  CONSTRAINT adepreciationmethod_aassetgrou FOREIGN KEY (a_depreciation_method_id)
      REFERENCES adepmthd (a_depreciation_method_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstgrpa ADD
  CONSTRAINT adepreciationmethodf_aassetgro FOREIGN KEY (a_depreciation_method_f_id)
      REFERENCES adepmthd (a_depreciation_method_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstgrpa ADD
  CONSTRAINT adepreciationtableheader_aass3 FOREIGN KEY (a_depreciation_table_header_id)
      REFERENCES adepthdr (a_depreciation_table_header_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstgrpa ADD
  CONSTRAINT cacctschema_aassetgroupacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_info_fin : aasstifin
--

ALTER TABLE aasstifin ADD
  CONSTRAINT aasset_aassetinfofin FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstifin ADD
  CONSTRAINT cbpartner_aassetinfofin FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_info_ins : aasstiins
--


--
-- Table : a_asset_info_lic : aasstilic
--

ALTER TABLE aasstilic ADD
  CONSTRAINT aasset_aassetinfolic FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_info_oth : asstioth
--


--
-- Table : a_asset_info_tax : asstitax
--


--
-- Table : a_asset_product : asstprd
--

ALTER TABLE asstprd ADD
  CONSTRAINT aasset_aassetproduct FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE asstprd ADD
  CONSTRAINT mproduct_aassetproduct FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_retirement : aasstret
--

ALTER TABLE aasstret ADD
  CONSTRAINT aasset_aassetretirement FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstret ADD
  CONSTRAINT cinvoiceline_aassetretirement FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_reval : asstrev
--

ALTER TABLE asstrev ADD
  CONSTRAINT aasset_aassetreval FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_reval_entry : aasstreve
--

ALTER TABLE aasstreve ADD
  CONSTRAINT cacctschema_aassetrevalentry FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstreve ADD
  CONSTRAINT ccurrency_aassetrevalentry FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstreve ADD
  CONSTRAINT cdoctype_aassetrevalentry FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstreve ADD
  CONSTRAINT cperiod_aassetrevalentry FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstreve ADD
  CONSTRAINT glcategory_aassetrevalentry FOREIGN KEY (gl_category_id)
      REFERENCES glcat (gl_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_reval_index : asstrevi
--


--
-- Table : a_asset_split : aasstsplit
--

ALTER TABLE aasstsplit ADD
  CONSTRAINT aasset_aassetsplit FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstsplit ADD
  CONSTRAINT adorgtrx_aassetsplit FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstsplit ADD
  CONSTRAINT cactivity_aassetsplit FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstsplit ADD
  CONSTRAINT ccampaign_aassetsplit FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstsplit ADD
  CONSTRAINT cdoctype_aassetsplit FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstsplit ADD
  CONSTRAINT cperiod_aassetsplit FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstsplit ADD
  CONSTRAINT cproject_aassetsplit FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstsplit ADD
  CONSTRAINT cprojectphase_aassetsplit FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstsplit ADD
  CONSTRAINT cprojecttask_aassetsplit FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstsplit ADD
  CONSTRAINT user1_aassetsplit FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstsplit ADD
  CONSTRAINT user2_aassetsplit FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstsplit ADD
  CONSTRAINT user3_aassetsplit FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aasstsplit ADD
  CONSTRAINT user4_aassetsplit FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_spread : aasstsprd
--


--
-- Table : a_asset_transfer : aassttrns
--

ALTER TABLE aassttrns ADD
  CONSTRAINT aasset_aassettransfer FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aassttrns ADD
  CONSTRAINT cacctschema_aassettransfer FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aassttrns ADD
  CONSTRAINT cperiod_aassettransfer FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_asset_type : aassttyp
--


--
-- Table : a_asset_use : aasstu
--

ALTER TABLE aasstu ADD
  CONSTRAINT aasset_aassetuse FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_depreciation : adep
--


--
-- Table : a_depreciation_build : adepbld
--

ALTER TABLE adepbld ADD
  CONSTRAINT aendasset_adepreciationbuild FOREIGN KEY (a_end_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adepbld ADD
  CONSTRAINT astartasset_adepreciationbuild FOREIGN KEY (a_start_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adepbld ADD
  CONSTRAINT cperiod_adepreciationbuild FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_depreciation_convention : adepconv
--


--
-- Table : a_depreciation_entry : adepent
--

ALTER TABLE adepent ADD
  CONSTRAINT cacctschema_adepreciationentry FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adepent ADD
  CONSTRAINT ccurrency_adepreciationentry FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adepent ADD
  CONSTRAINT cdoctype_adepreciationentry FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adepent ADD
  CONSTRAINT cperiod_adepreciationentry FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adepent ADD
  CONSTRAINT glcategory_adepreciationentry FOREIGN KEY (gl_category_id)
      REFERENCES glcat (gl_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_depreciation_exp : adepexp
--

ALTER TABLE adepexp ADD
  CONSTRAINT aasset_adepreciationexp FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adepexp ADD
  CONSTRAINT aassetaddition_adepreciationex FOREIGN KEY (a_asset_addition_id)
      REFERENCES aasstadd (a_asset_addition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adepexp ADD
  CONSTRAINT aassetdisposed_adepreciationex FOREIGN KEY (a_asset_disposed_id)
      REFERENCES aasstdsp (a_asset_disposed_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adepexp ADD
  CONSTRAINT adepreciationentry_adepreciati FOREIGN KEY (a_depreciation_entry_id)
      REFERENCES adepent (a_depreciation_entry_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_depreciation_forecast : adepfcst
--

ALTER TABLE adepfcst ADD
  CONSTRAINT aendasset_adepreciationforecas FOREIGN KEY (a_end_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adepfcst ADD
  CONSTRAINT astartasset_adepreciationforec FOREIGN KEY (a_start_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_depreciation_method : adepmthd
--


--
-- Table : a_depreciation_table_detail : adeptdet
--


--
-- Table : a_depreciation_table_header : adepthdr
--


--
-- Table : a_depreciation_workfile : adepwf
--

ALTER TABLE adepwf ADD
  CONSTRAINT aasset_adepreciationworkfile FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adepwf ADD
  CONSTRAINT afundingmode_adepreciationwork FOREIGN KEY (a_fundingmode_id)
      REFERENCES afundm (a_fundingmode_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_fundingmode : afundm
--


--
-- Table : a_fundingmode_acct : afundma
--

ALTER TABLE afundma ADD
  CONSTRAINT afundingmode_afundingmodeacct FOREIGN KEY (a_fundingmode_id)
      REFERENCES afundm (a_fundingmode_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE afundma ADD
  CONSTRAINT cacctschema_afundingmodeacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_registration : areg
--

ALTER TABLE areg ADD
  CONSTRAINT aasset_aregistration FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE areg ADD
  CONSTRAINT aduser_aregistration FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE areg ADD
  CONSTRAINT cbpartner_aregistration FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE areg ADD
  CONSTRAINT mproduct_aregistration FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_registrationattribute : aregatr
--

ALTER TABLE aregatr ADD
  CONSTRAINT adreference_aregattribute FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aregatr ADD
  CONSTRAINT adreferencevalue_aregattribute FOREIGN KEY (ad_reference_value_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_registrationproduct : aregprd
--

ALTER TABLE aregprd ADD
  CONSTRAINT aregattribute_aregproduct FOREIGN KEY (a_registrationattribute_id)
      REFERENCES aregatr (a_registrationattribute_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aregprd ADD
  CONSTRAINT mproduct_aregproduct FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : a_registrationvalue : aregval
--

ALTER TABLE aregval ADD
  CONSTRAINT aregattribute_aregvalue FOREIGN KEY (a_registrationattribute_id)
      REFERENCES aregatr (a_registrationattribute_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE aregval ADD
  CONSTRAINT aregistration_aregvalue FOREIGN KEY (a_registration_id)
      REFERENCES areg (a_registration_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_accesslog : adaccl
--

ALTER TABLE adaccl ADD
  CONSTRAINT adcolumn_adaccesslog FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adaccl ADD
  CONSTRAINT adtable_adacceslog FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_alert : ad_alert
--

ALTER TABLE ad_alert ADD
  CONSTRAINT calertprocessor_adalert FOREIGN KEY (ad_alertprocessor_id)
      REFERENCES adalrtprc (ad_alertprocessor_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : ad_alertprocessor : adalrtprc
--

ALTER TABLE adalrtprc ADD
  CONSTRAINT aduser_calertprocessor FOREIGN KEY (supervisor_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_alertprocessorlog : adalrtpl
--

ALTER TABLE adalrtpl ADD
  CONSTRAINT calertprocessor_log FOREIGN KEY (ad_alertprocessor_id)
      REFERENCES adalrtprc (ad_alertprocessor_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_alertrecipient : adalrtrcp
--

ALTER TABLE adalrtrcp ADD
  CONSTRAINT adalert_adalertrecipient FOREIGN KEY (ad_alert_id)
      REFERENCES ad_alert (ad_alert_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adalrtrcp ADD
  CONSTRAINT adrole_adaltertrecipient FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adalrtrcp ADD
  CONSTRAINT aduser_adalertrecipient FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_alertrule : adalrtr
--

ALTER TABLE adalrtr ADD
  CONSTRAINT adaltert_aralertrule FOREIGN KEY (ad_alert_id)
      REFERENCES ad_alert (ad_alert_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adalrtr ADD
  CONSTRAINT adtable_adaltertrule FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_appregistration : adappreg
--

ALTER TABLE adappreg ADD
  CONSTRAINT adappsupport_adappregistration FOREIGN KEY (ad_appsupport_id)
      REFERENCES adappspt (ad_appsupport_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_appregistration_para : adappregp
--

ALTER TABLE adappregp ADD
  CONSTRAINT adappregistration_adappregistr FOREIGN KEY (ad_appregistration_id)
      REFERENCES adappreg (ad_appregistration_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adappregp ADD
  CONSTRAINT adappsupportpara_adappregistra FOREIGN KEY (ad_appsupport_para_id)
      REFERENCES adappsptp (ad_appsupport_para_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_appsupport : adappspt
--


--
-- Table : ad_appsupport_para : adappsptp
--

ALTER TABLE adappsptp ADD
  CONSTRAINT adappsupport_adappsupportpara FOREIGN KEY (ad_appsupport_id)
      REFERENCES adappspt (ad_appsupport_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adappsptp ADD
  CONSTRAINT adreference_adappsupportpara FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_archive : ad_archive
--

ALTER TABLE ad_archive ADD
  CONSTRAINT adprocess_adarchive FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_archive ADD
  CONSTRAINT adtable_adarchive FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_archive ADD
  CONSTRAINT cbpartner_adarchive FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_attachment : adatch
--

ALTER TABLE adatch ADD
  CONSTRAINT adtable_adattachment FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_attachmentnote : adatchn
--

ALTER TABLE adatchn ADD
  CONSTRAINT adattachment_note FOREIGN KEY (ad_attachment_id)
      REFERENCES adatch (ad_attachment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adatchn ADD
  CONSTRAINT aduser_adattachmentnote FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_attribute : adattr
--

ALTER TABLE adattr ADD
  CONSTRAINT adreference_adattribute FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adattr ADD
  CONSTRAINT adreferencevalue_adattribute FOREIGN KEY (ad_reference_value_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adattr ADD
  CONSTRAINT adtable_adattribute FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adattr ADD
  CONSTRAINT advalrule_adattribute FOREIGN KEY (ad_val_rule_id)
      REFERENCES advalr (ad_val_rule_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : ad_attribute_value : adattrv
--

ALTER TABLE adattrv ADD
  CONSTRAINT adattribute_adattributevalue FOREIGN KEY (ad_attribute_id)
      REFERENCES adattr (ad_attribute_id)
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.ad_attribute_value
  OWNER TO adempiere;

--
-- Table : ad_browse : ad_browse
--

ALTER TABLE ad_browse ADD
  CONSTRAINT adprocess_adbrowse FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_browse ADD
  CONSTRAINT adtable_adbrowse FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_browse ADD
  CONSTRAINT adview_adbrowse FOREIGN KEY (ad_view_id)
      REFERENCES ad_view (ad_view_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_browse ADD
  CONSTRAINT adwindow_adbrowse FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_browse ADD
  CONSTRAINT entityt_adbrowse FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_browse_access : adbrwac
--

ALTER TABLE adbrwac ADD
  CONSTRAINT adbrowse_adbrowseaccess FOREIGN KEY (ad_browse_id)
      REFERENCES ad_browse (ad_browse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adbrwac ADD
  CONSTRAINT adrole_adbrowseaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_browse_field : adbrwfld
--

ALTER TABLE adbrwfld ADD
  CONSTRAINT adbrowse_adbrowsefield FOREIGN KEY (ad_browse_id)
      REFERENCES ad_browse (ad_browse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adbrwfld ADD
  CONSTRAINT adelement_adbrowsefield FOREIGN KEY (ad_element_id)
      REFERENCES ad_element (ad_element_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adbrwfld ADD
  CONSTRAINT adreference_adbrowsefield FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adbrwfld ADD
  CONSTRAINT adreferencevalue_adbrowsefield FOREIGN KEY (ad_reference_value_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adbrwfld ADD
  CONSTRAINT advalrule_adbrowsefield FOREIGN KEY (ad_val_rule_id)
      REFERENCES advalr (ad_val_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adbrwfld ADD
  CONSTRAINT adviewcolumn_adbrowsefield FOREIGN KEY (ad_view_column_id)
      REFERENCES advwclm (ad_view_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adbrwfld ADD
  CONSTRAINT axiscolumn_adbrowsefield FOREIGN KEY (axis_column_id)
      REFERENCES advwclm (ad_view_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adbrwfld ADD
  CONSTRAINT axisparentcolumn_adbrowsefield FOREIGN KEY (axis_parent_column_id)
      REFERENCES advwclm (ad_view_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adbrwfld ADD
  CONSTRAINT entityt_adbrowsefield FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_browse_field_trl : adbrwfldt
--

ALTER TABLE adbrwfldt ADD
  CONSTRAINT adbrowsefield_adbrowsefieldtrl FOREIGN KEY (ad_browse_field_id)
      REFERENCES adbrwfld (ad_browse_field_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adbrwfldt ADD
  CONSTRAINT adlangu_adbrowsefieldtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_browse_trl : adbrwt
--

ALTER TABLE adbrwt ADD
  CONSTRAINT adbrowse_adbrowsetrl FOREIGN KEY (ad_browse_id)
      REFERENCES ad_browse (ad_browse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adbrwt ADD
  CONSTRAINT adlangu_adbrowsetrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_changelog : adchgl
--

ALTER TABLE adchgl ADD
  CONSTRAINT adcolumn_adchangelog FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adchgl ADD
  CONSTRAINT adsession_adchangelog FOREIGN KEY (ad_session_id)
      REFERENCES ad_session (ad_session_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adchgl ADD
  CONSTRAINT adtable_adchangelog FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_chart : ad_chart
--


--
-- Table : ad_chartdatasource : adchtds
--

ALTER TABLE adchtds ADD
  CONSTRAINT adchart_adchartdatasource FOREIGN KEY (ad_chart_id)
      REFERENCES ad_chart (ad_chart_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adchtds ADD
  CONSTRAINT adtable_adchartdatasource FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adchtds ADD
  CONSTRAINT entityt_adchartdatasource FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_client : ad_client
--

ALTER TABLE ad_client ADD
  CONSTRAINT ademailconfig_adclient FOREIGN KEY (ad_emailconfig_id)
      REFERENCES ademcfg (ad_emailconfig_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_client ADD
  CONSTRAINT adlangu_adclient FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_client ADD
  CONSTRAINT adreplicationstrategy_adclient FOREIGN KEY (ad_replicationstrategy_id)
      REFERENCES adreplstr (ad_replicationstrategy_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_clientinfo : adclntinf
--

ALTER TABLE adclntinf ADD
  CONSTRAINT adclient_adclientinfo FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adclntinf ADD
  CONSTRAINT adtreeactivity_adclientinfo FOREIGN KEY (ad_tree_activity_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT adtreebpartner_adclientinfo FOREIGN KEY (ad_tree_bpartner_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT adtreecampaign_adclientinfo FOREIGN KEY (ad_tree_campaign_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT adtreemenu_adclientinfo FOREIGN KEY (ad_tree_menu_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT adtreeorg_adclientinfo FOREIGN KEY (ad_tree_org_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT adtreeproduct_adclientinfo FOREIGN KEY (ad_tree_product_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT adtreeproject_adclientinfo FOREIGN KEY (ad_tree_project_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT adtreesalesreg_adclientinfo FOREIGN KEY (ad_tree_salesregion_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT c_uom_length_ad_clientinfo FOREIGN KEY (c_uom_length_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT c_uom_time_ad_clientinfo FOREIGN KEY (c_uom_time_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT c_uom_volume_ad_clientinfo FOREIGN KEY (c_uom_volume_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT c_uom_weight_ad_clientinfo FOREIGN KEY (c_uom_weight_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT cacctschema1_adclientinfo FOREIGN KEY (c_acctschema1_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT cbpartnercashtrx_adclientinfo FOREIGN KEY (c_bpartnercashtrx_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT ccalendar_adclientinfo FOREIGN KEY (c_calendar_id)
      REFERENCES c_calendar (c_calendar_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT logo_adclientinfo FOREIGN KEY (logo_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT logoreport_adclientinfo FOREIGN KEY (logoreport_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT logoweb_adclientinfo FOREIGN KEY (logoweb_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT mproductfreight_adclientinfo FOREIGN KEY (m_productfreight_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntinf ADD
  CONSTRAINT restorepasswordmailtext_adclie FOREIGN KEY (restorepassword_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_clientshare : adclntsh
--

ALTER TABLE adclntsh ADD
  CONSTRAINT adclient_adclientshare FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntsh ADD
  CONSTRAINT adorg_adclientshare FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclntsh ADD
  CONSTRAINT adtable_adclientshare FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_color : ad_color
--

ALTER TABLE ad_color ADD
  CONSTRAINT adimage_adcolor FOREIGN KEY (ad_image_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_column : ad_column
--

ALTER TABLE ad_column ADD
  CONSTRAINT ad_element_ad_column FOREIGN KEY (ad_element_id)
      REFERENCES ad_element (ad_element_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_column ADD
  CONSTRAINT ad_reference_columndatatype FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_column ADD
  CONSTRAINT ad_reference_columnvalue FOREIGN KEY (ad_reference_value_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_column ADD
  CONSTRAINT ad_table_column FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ad_column ADD
  CONSTRAINT ad_valrule_column FOREIGN KEY (ad_val_rule_id)
      REFERENCES advalr (ad_val_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_column ADD
  CONSTRAINT adchart_adcolumn FOREIGN KEY (ad_chart_id)
      REFERENCES ad_chart (ad_chart_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_column ADD
  CONSTRAINT adimage_adcolumn FOREIGN KEY (ad_image_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_column ADD
  CONSTRAINT adprocess_adcolumn FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ad_column ADD
  CONSTRAINT columnclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_column ADD
  CONSTRAINT columnorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_column ADD
  CONSTRAINT entityt_adcolumn FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_column_access : adcolacc
--

ALTER TABLE adcolacc ADD
  CONSTRAINT adcolumn_adcolumnaccess FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adcolacc ADD
  CONSTRAINT adrole_adcolumnaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adcolacc ADD
  CONSTRAINT adtable_adcolumnaccess FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.ad_column_access
  OWNER TO adempiere;

--
-- Table : ad_column_trl : adcoltrl
--

ALTER TABLE adcoltrl ADD
  CONSTRAINT adcolumn_adcolumntrl FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adcoltrl ADD
  CONSTRAINT adlanguage_adcolumntrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_columnprocess : adclmprc
--

ALTER TABLE adclmprc ADD
  CONSTRAINT adcolumn_adcolumnprocess FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclmprc ADD
  CONSTRAINT adprocess_adcolumnprocess FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_columnprocesspara : adclmprcp
--

ALTER TABLE adclmprcp ADD
  CONSTRAINT adcolumnprocess_adcolumnproces FOREIGN KEY (ad_columnprocess_id)
      REFERENCES adclmprc (ad_columnprocess_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adclmprcp ADD
  CONSTRAINT adprocesspara_adcolumnprocessp FOREIGN KEY (ad_process_para_id)
      REFERENCES adprcp (ad_process_para_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_contextinfo : adctxi
--

ALTER TABLE adctxi ADD
  CONSTRAINT admessage_adcontextinfo FOREIGN KEY (ad_message_id)
      REFERENCES ad_message (ad_message_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_dashboard_access : addbacs
--

ALTER TABLE addbacs ADD
  CONSTRAINT adrole_addashboardaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE addbacs ADD
  CONSTRAINT padashboardcontent_addashboard FOREIGN KEY (pa_dashboardcontent_id)
      REFERENCES padbcnt (pa_dashboardcontent_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_desktop : ad_desktop
--

ALTER TABLE ad_desktop ADD
  CONSTRAINT adcolor_addesktop FOREIGN KEY (ad_color_id)
      REFERENCES ad_color (ad_color_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_desktop ADD
  CONSTRAINT adimage_addesktop FOREIGN KEY (ad_image_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_desktop_trl : addsktrl
--

ALTER TABLE addsktrl ADD
  CONSTRAINT addesktop_addesktoptrl FOREIGN KEY (ad_desktop_id)
      REFERENCES ad_desktop (ad_desktop_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE addsktrl ADD
  CONSTRAINT adlanguage_addesktoptrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_desktopworkbench : addskwb
--

ALTER TABLE addskwb ADD
  CONSTRAINT addesktop_addesktopwb FOREIGN KEY (ad_desktop_id)
      REFERENCES ad_desktop (ad_desktop_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE addskwb ADD
  CONSTRAINT adworkbench_addesktopwb FOREIGN KEY (ad_workbench_id)
      REFERENCES adwb (ad_workbench_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_document_action_access : addocaacs
--

ALTER TABLE addocaacs ADD
  CONSTRAINT adreflist_addocumentactionacce FOREIGN KEY (ad_ref_list_id)
      REFERENCES adrefl (ad_ref_list_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE addocaacs ADD
  CONSTRAINT adrole_addocumentactionaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE addocaacs ADD
  CONSTRAINT cdoctype_addocumentactionacces FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.ad_document_action_access
  OWNER TO adempiere;

--
-- Table : ad_element : ad_element
--

ALTER TABLE ad_element ADD
  CONSTRAINT adreference_adelement FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_element ADD
  CONSTRAINT adreferencevalue_adelement FOREIGN KEY (ad_reference_value_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_element ADD
  CONSTRAINT entityt_adelement FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_element_trl : adelemt
--

ALTER TABLE adelemt ADD
  CONSTRAINT ad_language_ad_element_trl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adelemt ADD
  CONSTRAINT adelement_adelementtrl FOREIGN KEY (ad_element_id)
      REFERENCES ad_element (ad_element_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_emailconfig : ademcfg
--


--
-- Table : ad_entitytype : adentyp
--


--
-- Table : ad_error : ad_error
--

ALTER TABLE ad_error ADD
  CONSTRAINT adlangu_aderror FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_field : ad_field
--

ALTER TABLE ad_field ADD
  CONSTRAINT ad_column_field FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_field ADD
  CONSTRAINT ad_tab_field FOREIGN KEY (ad_tab_id)
      REFERENCES ad_tab (ad_tab_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ad_field ADD
  CONSTRAINT adcontextinfo_adfield FOREIGN KEY (ad_contextinfo_id)
      REFERENCES adctxi (ad_contextinfo_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_field ADD
  CONSTRAINT adfielddefinition_adfield FOREIGN KEY (ad_fielddefinition_id)
      REFERENCES adflddfn (ad_fielddefinition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_field ADD
  CONSTRAINT adfieldgroup_adfield FOREIGN KEY (ad_fieldgroup_id)
      REFERENCES adfldgrp (ad_fieldgroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_field ADD
  CONSTRAINT adimage_adfield FOREIGN KEY (ad_image_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_field ADD
  CONSTRAINT adreference_adfield FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_field ADD
  CONSTRAINT adreferencevalue_adfield FOREIGN KEY (ad_reference_value_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_field ADD
  CONSTRAINT advalrule_adfield FOREIGN KEY (ad_val_rule_id)
      REFERENCES advalr (ad_val_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_field ADD
  CONSTRAINT entityt_adfield FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_field ADD
  CONSTRAINT fieldclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_field ADD
  CONSTRAINT fieldorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_field ADD
  CONSTRAINT includedtab_adfield FOREIGN KEY (included_tab_id)
      REFERENCES ad_tab (ad_tab_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_field_trl : adfldtrl
--

ALTER TABLE adfldtrl ADD
  CONSTRAINT ad_fieldtrl FOREIGN KEY (ad_field_id)
      REFERENCES ad_field (ad_field_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adfldtrl ADD
  CONSTRAINT ad_language_fieldtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_fieldcondition : adfldcnd
--

ALTER TABLE adfldcnd ADD
  CONSTRAINT adcolor_adfieldcondition FOREIGN KEY (ad_color_id)
      REFERENCES ad_color (ad_color_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adfldcnd ADD
  CONSTRAINT adfielddefinition_adfieldcondi FOREIGN KEY (ad_fielddefinition_id)
      REFERENCES adflddfn (ad_fielddefinition_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adfldcnd ADD
  CONSTRAINT adprintfont_adfieldcondition FOREIGN KEY (ad_printfont_id)
      REFERENCES adprtfnt (ad_printfont_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_fielddefinition : adflddfn
--


--
-- Table : ad_fieldgroup : adfldgrp
--

ALTER TABLE adfldgrp ADD
  CONSTRAINT entityt_adfieldgroup FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_fieldgroup_trl : adfldgrpt
--

ALTER TABLE adfldgrpt ADD
  CONSTRAINT adfieldgroup_trl FOREIGN KEY (ad_fieldgroup_id)
      REFERENCES adfldgrp (ad_fieldgroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adfldgrpt ADD
  CONSTRAINT adlanguage_adfieldgrouptrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_find : ad_find
--

ALTER TABLE ad_find ADD
  CONSTRAINT adcolumn_adfind FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_form : ad_form
--

ALTER TABLE ad_form ADD
  CONSTRAINT entityt_adform FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_form_access : adfrmacc
--

ALTER TABLE adfrmacc ADD
  CONSTRAINT adform_adformaccess FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adfrmacc ADD
  CONSTRAINT adrole_adformaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_form_trl : adfrmtrl
--

ALTER TABLE adfrmtrl ADD
  CONSTRAINT adform_adformtrl FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adfrmtrl ADD
  CONSTRAINT adlanguage_adformtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_housekeeping : adhsek
--

ALTER TABLE adhsek ADD
  CONSTRAINT adtable_adhousekeeping FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_image : ad_image
--

ALTER TABLE ad_image ADD
  CONSTRAINT entityt_adimage FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_impformat : adimpfmt
--

ALTER TABLE adimpfmt  ADD
  CONSTRAINT adtable_adimpformat FOREIGN KEY (ad_table_id)
      REFERENCES adempiere.ad_table (ad_table_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE INITIALLY DEFERRED;

--
-- Table : ad_impformat_row : adimpfmtr
--

ALTER TABLE adimpfmtr ADD
  CONSTRAINT adcolumn_adimpformatrow FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adimpfmtr ADD
  CONSTRAINT adimpformat_adimpformatrow FOREIGN KEY (ad_impformat_id)
      REFERENCES adimpfmt  (ad_impformat_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_infocolumn : adinfcol
--

ALTER TABLE adinfcol ADD
  CONSTRAINT adelement_adinfocolumn FOREIGN KEY (ad_element_id)
      REFERENCES ad_element (ad_element_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adinfcol ADD
  CONSTRAINT adinfowindow_adinfocolumn FOREIGN KEY (ad_infowindow_id)
      REFERENCES adinfwin (ad_infowindow_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adinfcol ADD
  CONSTRAINT adreference_adinfocolumn FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adinfcol ADD
  CONSTRAINT entityt_adinfocolumn FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_infocolumn_trl : adinfcolt
--

ALTER TABLE adinfcolt ADD
  CONSTRAINT adinfocolumn_adinfocolumntrl FOREIGN KEY (ad_infocolumn_id)
      REFERENCES adinfcol (ad_infocolumn_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adinfcolt ADD
  CONSTRAINT adlanguage_adinfocolumntrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_infowindow : adinfwin
--

ALTER TABLE adinfwin ADD
  CONSTRAINT adtable_adinfowindow FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adinfwin ADD
  CONSTRAINT entityt_adinfowindow FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_infowindow_trl : adinfwint
--

ALTER TABLE adinfwint ADD
  CONSTRAINT adinfowindow_adinfowindowtrl FOREIGN KEY (ad_infowindow_id)
      REFERENCES adinfwin (ad_infowindow_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adinfwint ADD
  CONSTRAINT adlanguage_adinfowindowtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_issue : ad_issue
--

ALTER TABLE ad_issue ADD
  CONSTRAINT aasset_adissue FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ad_issue ADD
  CONSTRAINT adform_adissue FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ad_issue ADD
  CONSTRAINT adprocess_adissue FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ad_issue ADD
  CONSTRAINT adwindow_adissue FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ad_issue ADD
  CONSTRAINT rissueproject_adissue FOREIGN KEY (r_issueproject_id)
      REFERENCES rissprj (r_issueproject_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_issue ADD
  CONSTRAINT rissuesystem_ad_issue FOREIGN KEY (r_issuesystem_id)
      REFERENCES risssys (r_issuesystem_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_issue ADD
  CONSTRAINT rissueuser_adissue FOREIGN KEY (r_issueuser_id)
      REFERENCES rissusr (r_issueuser_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_issue ADD
  CONSTRAINT rknownissue_adissue FOREIGN KEY (r_issueknown_id)
      REFERENCES risskn (r_issueknown_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_issue ADD
  CONSTRAINT rrequest_adissue FOREIGN KEY (r_request_id)
      REFERENCES r_request (r_request_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : ad_labelprinter : adlblprt
--


--
-- Table : ad_labelprinterfunction : adlblprtf
--

ALTER TABLE adlblprtf ADD
  CONSTRAINT adlabelprinter_function FOREIGN KEY (ad_labelprinter_id)
      REFERENCES adlblprt (ad_labelprinter_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_language : adlng
--

ALTER TABLE adlng ADD
  CONSTRAINT languageclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adlng ADD
  CONSTRAINT languageorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_ldapaccess : adldapac
--

ALTER TABLE adldapac ADD
  CONSTRAINT adldapprocessor_adldapaccess FOREIGN KEY (ad_ldapprocessor_id)
      REFERENCES adldaprc (ad_ldapprocessor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adldapac ADD
  CONSTRAINT aduser_adldapaccess FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adldapac ADD
  CONSTRAINT rinterestarea_adldapaccess FOREIGN KEY (r_interestarea_id)
      REFERENCES ria (r_interestarea_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_ldapprocessor : adldaprc
--

ALTER TABLE adldaprc ADD
  CONSTRAINT aduser_adldapprocessor FOREIGN KEY (supervisor_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_ldapprocessorlog : adldappl
--

ALTER TABLE adldappl ADD
  CONSTRAINT adldapprocessor_adldapproclog FOREIGN KEY (ad_ldapprocessor_id)
      REFERENCES adldaprc (ad_ldapprocessor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_memo : ad_memo
--

ALTER TABLE ad_memo ADD
  CONSTRAINT adtable_admemo FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_memo ADD
  CONSTRAINT aduser_admemo FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_memo ADD
  CONSTRAINT cactivity_admemo FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_memo ADD
  CONSTRAINT cbpartner_admemo FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_memo ADD
  CONSTRAINT ccampaign_admemo FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_memo ADD
  CONSTRAINT cproject_admemo FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_memo ADD
  CONSTRAINT mproduct_admemo FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_menu : ad_menu
--

ALTER TABLE ad_menu ADD
  CONSTRAINT ad_menu_org FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_menu ADD
  CONSTRAINT adbrowse_admenu FOREIGN KEY (ad_browse_id)
      REFERENCES ad_browse (ad_browse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_menu ADD
  CONSTRAINT adclient_admenu FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_menu ADD
  CONSTRAINT adform_admenu FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_menu ADD
  CONSTRAINT admenu_adworkbench FOREIGN KEY (ad_workbench_id)
      REFERENCES adwb (ad_workbench_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_menu ADD
  CONSTRAINT adprocess_admenu FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_menu ADD
  CONSTRAINT adtask_admenu FOREIGN KEY (ad_task_id)
      REFERENCES ad_task (ad_task_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_menu ADD
  CONSTRAINT adwindow_admenu FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_menu ADD
  CONSTRAINT adworkflow_admenu FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_menu ADD
  CONSTRAINT entityt_admenu FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_menu_trl : admnutrl
--

ALTER TABLE admnutrl ADD
  CONSTRAINT ad_language_menutrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE admnutrl ADD
  CONSTRAINT ad_menutrl FOREIGN KEY (ad_menu_id)
      REFERENCES ad_menu (ad_menu_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_message : ad_message
--

ALTER TABLE ad_message ADD
  CONSTRAINT entityt_admessage FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_message ADD
  CONSTRAINT messageclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_message ADD
  CONSTRAINT messageorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_message_trl : admsgtrl
--

ALTER TABLE admsgtrl ADD
  CONSTRAINT ad_language_messagetrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE admsgtrl ADD
  CONSTRAINT ad_messagetrl FOREIGN KEY (ad_message_id)
      REFERENCES ad_message (ad_message_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_migration : admgtn
--

ALTER TABLE admgtn ADD
  CONSTRAINT entityt_admigration FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_migrationdata : admgtndta
--

ALTER TABLE admgtndta ADD
  CONSTRAINT admigrationstep_admigrationdat FOREIGN KEY (ad_migrationstep_id)
      REFERENCES admgtnst (ad_migrationstep_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_migrationscript : admgtnsc
--


--
-- Table : ad_migrationstep : admgtnst
--

ALTER TABLE admgtnst ADD
  CONSTRAINT admigration_admigrationstep FOREIGN KEY (ad_migration_id)
      REFERENCES admgtn (ad_migration_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_modelvalidator : admdlval
--

ALTER TABLE admdlval ADD
  CONSTRAINT entityt_admodelvalidator FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_modification : admod
--

ALTER TABLE admod ADD
  CONSTRAINT adenritytype_admodification FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_note : ad_note
--

ALTER TABLE ad_note ADD
  CONSTRAINT admessage_adnote FOREIGN KEY (ad_message_id)
      REFERENCES ad_message (ad_message_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_note ADD
  CONSTRAINT adtable_adnote FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_note ADD
  CONSTRAINT aduser_adnote FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_note ADD
  CONSTRAINT adwfactivity_adnote FOREIGN KEY (ad_wf_activity_id)
      REFERENCES adwfact (ad_wf_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_org : ad_org
--

ALTER TABLE ad_org ADD
  CONSTRAINT ad_org__ad_repli_ad_replica FOREIGN KEY (ad_replicationstrategy_id)
      REFERENCES adreplstr (ad_replicationstrategy_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_org ADD
  CONSTRAINT adclient_adorg FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_orginfo : ad_orginfo
--

ALTER TABLE ad_orginfo ADD
  CONSTRAINT adorg_adorginfo FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ad_orginfo ADD
  CONSTRAINT adorgparent_adorginfo FOREIGN KEY (parent_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ad_orginfo ADD
  CONSTRAINT adorgtype_adorginfo FOREIGN KEY (ad_orgtype_id)
      REFERENCES ad_orgtype (ad_orgtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_orginfo ADD
  CONSTRAINT aduser_adorginfo FOREIGN KEY (supervisor_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ad_orginfo ADD
  CONSTRAINT c_location_ad_orginfo FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_orginfo ADD
  CONSTRAINT cbank_adorginfo FOREIGN KEY (transferbank_id)
      REFERENCES c_bank (c_bank_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_orginfo ADD
  CONSTRAINT ccalendar_adorginfo FOREIGN KEY (c_calendar_id)
      REFERENCES c_calendar (c_calendar_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_orginfo ADD
  CONSTRAINT ccashbook_adorginfo FOREIGN KEY (transfercashbook_id)
      REFERENCES c_cashbook (c_cashbook_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_orginfo ADD
  CONSTRAINT dropshipwarehouse_adorginfo FOREIGN KEY (dropship_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_orginfo ADD
  CONSTRAINT logo_adorginfo FOREIGN KEY (logo_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_orginfo ADD
  CONSTRAINT mwarehouse_adorginfo FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_orginfo ADD
  CONSTRAINT pagoal_adorginfo FOREIGN KEY (pa_goal_id)
      REFERENCES pa_goal (pa_goal_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_orgtype : ad_orgtype
--

ALTER TABLE ad_orgtype ADD
  CONSTRAINT adprintcolor_adorgtype FOREIGN KEY (ad_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.ad_orgtype
  OWNER TO adempiere;

--
-- Table : ad_package_exp : adpkge
--


--
-- Table : ad_package_exp_common : adpkgecom
--

ALTER TABLE adpkgecom ADD
  CONSTRAINT adform_adpackageexpcommon FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgecom ADD
  CONSTRAINT adimpformat_adpackageexpcommon FOREIGN KEY (ad_impformat_id)
      REFERENCES adimpfmt  (ad_impformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgecom ADD
  CONSTRAINT admenu_adpackageexpcommon FOREIGN KEY (ad_menu_id)
      REFERENCES ad_menu (ad_menu_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgecom ADD
  CONSTRAINT adprocess_adpackageexpcommon FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgecom ADD
  CONSTRAINT adreportview_adpackageexpcommo FOREIGN KEY (ad_reportview_id)
      REFERENCES adrptvw (ad_reportview_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgecom ADD
  CONSTRAINT adrole_adpackageexpcommon FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgecom ADD
  CONSTRAINT adtable_adpackageexpcommon FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgecom ADD
  CONSTRAINT adwindow_adpackageexpcommon FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgecom ADD
  CONSTRAINT adworkbench_adpackageexpcommon FOREIGN KEY (ad_workbench_id)
      REFERENCES adwb (ad_workbench_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgecom ADD
  CONSTRAINT adworkflow_adpackageexpcommon FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.ad_package_exp_common
  OWNER TO adempiere;

--
-- Table : ad_package_exp_detail : adpkgedet
--

ALTER TABLE adpkgedet ADD
  CONSTRAINT adbrowse_adpackageexpdetail FOREIGN KEY (ad_browse_id)
      REFERENCES ad_browse (ad_browse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT adform_adpackageexpdetail FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT adimpformat_adpackageexpdetail FOREIGN KEY (ad_impformat_id)
      REFERENCES adimpfmt  (ad_impformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT admenu_adpackageexpdetail FOREIGN KEY (ad_menu_id)
      REFERENCES ad_menu (ad_menu_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT admessage_adpackageexpdetail FOREIGN KEY (ad_message_id)
      REFERENCES ad_message (ad_message_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT admodval_adpackageexpdetail FOREIGN KEY (ad_modelvalidator_id)
      REFERENCES admdlval (ad_modelvalidator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT adpackageexp_adpackageexpdetai FOREIGN KEY (ad_package_exp_id)
      REFERENCES adpkge (ad_package_exp_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT adprintformat_adpackageexpdeta FOREIGN KEY (ad_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT adprocess_adpackageexpdetail FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT adreference_adpackageexpdetail FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT adreportview_adpackageexpdetai FOREIGN KEY (ad_reportview_id)
      REFERENCES adrptvw (ad_reportview_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT adrole_adpackageexpdetail FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT adtable_adpackageexpdetail FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT adview_adpackageexpdetail FOREIGN KEY (ad_view_id)
      REFERENCES ad_view (ad_view_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT adwindow_adpackageexpdetail FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT adworkbench_adpackageexpdetail FOREIGN KEY (ad_workbench_id)
      REFERENCES adwb (ad_workbench_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgedet ADD
  CONSTRAINT adworkflow_adpackageexpdetail FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.ad_package_exp_detail
  OWNER TO adempiere;

--
-- Table : ad_package_imp : adpkgi
--


--
-- Table : ad_package_imp_backup : adpkgibck
--

ALTER TABLE adpkgibck ADD
  CONSTRAINT adcolumn_adpackageimpbackup FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpkgibck ADD
  CONSTRAINT adreference_adpackageimpbackup FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.ad_package_imp_backup
  OWNER TO adempiere;

--
-- Table : ad_package_imp_detail : adpkgidet
--


--
-- Table : ad_package_imp_inst : adpkgiist
--


--
-- Table : ad_package_imp_proc : adpkgipr
--


--
-- Table : ad_pinstance : adpinst
--

ALTER TABLE adpinst ADD
  CONSTRAINT adprintformat_adpinstance FOREIGN KEY (ad_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpinst ADD
  CONSTRAINT adprocess_adpinstance FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpinst ADD
  CONSTRAINT aduser_pinstance FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_pinstance_log : adpinstl
--

ALTER TABLE adpinstl ADD
  CONSTRAINT adpinstance_pilog FOREIGN KEY (ad_pinstance_id)
      REFERENCES adpinst (ad_pinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_pinstance_para : adpinstp
--

ALTER TABLE adpinstp ADD
  CONSTRAINT adpinstance_adpinstancepara FOREIGN KEY (ad_pinstance_id)
      REFERENCES adpinst (ad_pinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.ad_pinstance_para
  OWNER TO adempiere;

--
-- Table : ad_preference : adpref
--

ALTER TABLE adpref ADD
  CONSTRAINT ad_preference_client FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpref ADD
  CONSTRAINT ad_preference_org FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpref ADD
  CONSTRAINT ad_user_preference FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpref ADD
  CONSTRAINT ad_window_preference FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_printcolor : adprtclr
--


--
-- Table : ad_printfont : adprtfnt
--


--
-- Table : ad_printform : adprtfrm
--

ALTER TABLE adprtfrm ADD
  CONSTRAINT adclient_adprintform FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT adprintformat_forminvoice FOREIGN KEY (invoice_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT adprintformat_formorder FOREIGN KEY (order_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT adprintformat_formproject FOREIGN KEY (project_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT adprintformat_formremittance FOREIGN KEY (remittance_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT adprintformat_formshipment FOREIGN KEY (shipment_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT distribordermailtext_adprintfo FOREIGN KEY (distrib_order_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT distriborderprintformat_adprin FOREIGN KEY (distrib_order_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT manufordermailtext_adprintform FOREIGN KEY (manuf_order_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT manuforderprintformat_adprintf FOREIGN KEY (manuf_order_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT rmailtext_invoiceadprintform FOREIGN KEY (invoice_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT rmailtext_orderadprintform FOREIGN KEY (order_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT rmailtext_projectadprintform FOREIGN KEY (project_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT rmailtext_remitadprintform FOREIGN KEY (remittance_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfrm ADD
  CONSTRAINT rmailtext_shipadprintform FOREIGN KEY (shipment_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_printformat : adprtfmt
--

ALTER TABLE adprtfmt ADD
  CONSTRAINT ad_printfont_adprintformat FOREIGN KEY (ad_printfont_id)
      REFERENCES adprtfnt (ad_printfont_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfmt ADD
  CONSTRAINT adprintcolor_adprintformat FOREIGN KEY (ad_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfmt ADD
  CONSTRAINT adprintformattable_format FOREIGN KEY (ad_printtableformat_id)
      REFERENCES adprttf (ad_printtableformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfmt ADD
  CONSTRAINT adprintpaper_adprintformat FOREIGN KEY (ad_printpaper_id)
      REFERENCES adprtp (ad_printpaper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfmt ADD
  CONSTRAINT adprintview_adprintformat FOREIGN KEY (ad_reportview_id)
      REFERENCES adrptvw (ad_reportview_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfmt ADD
  CONSTRAINT adtable_adprintformat FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfmt ADD
  CONSTRAINT jasperprocess_adprintformat FOREIGN KEY (jasperprocess_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_printformatitem : adprtfi
--

ALTER TABLE adprtfi ADD
  CONSTRAINT adcolumn_adprintformatitem FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adprtfi ADD
  CONSTRAINT adprintcolor_adprintformatitem FOREIGN KEY (ad_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfi ADD
  CONSTRAINT adprintfont_adprintformatitem FOREIGN KEY (ad_printfont_id)
      REFERENCES adprtfnt (ad_printfont_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfi ADD
  CONSTRAINT adprintformat_printformatchild FOREIGN KEY (ad_printformatchild_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE adprtfi ADD
  CONSTRAINT adprintformat_printformatitem FOREIGN KEY (ad_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adprtfi ADD
  CONSTRAINT adprintgraph_printformatitem FOREIGN KEY (ad_printgraph_id)
      REFERENCES adprtg (ad_printgraph_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_printformatitem_trl : adprtfit
--

ALTER TABLE adprtfit ADD
  CONSTRAINT adlanguage_adprintformitemtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtfit ADD
  CONSTRAINT adprintformatitem_trl FOREIGN KEY (ad_printformatitem_id)
      REFERENCES adprtfi (ad_printformatitem_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_printgraph : adprtg
--

ALTER TABLE adprtg ADD
  CONSTRAINT adprintformat_adprintgraph FOREIGN KEY (ad_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtg ADD
  CONSTRAINT adprintformatitem_graphdata FOREIGN KEY (data_printformatitem_id)
      REFERENCES adprtfi (ad_printformatitem_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtg ADD
  CONSTRAINT adprintformatitem_graphdata1 FOREIGN KEY (data1_printformatitem_id)
      REFERENCES adprtfi (ad_printformatitem_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtg ADD
  CONSTRAINT adprintformatitem_graphdata2 FOREIGN KEY (data2_printformatitem_id)
      REFERENCES adprtfi (ad_printformatitem_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtg ADD
  CONSTRAINT adprintformatitem_graphdata3 FOREIGN KEY (data3_printformatitem_id)
      REFERENCES adprtfi (ad_printformatitem_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtg ADD
  CONSTRAINT adprintformatitem_graphdata4 FOREIGN KEY (data4_printformatitem_id)
      REFERENCES adprtfi (ad_printformatitem_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtg ADD
  CONSTRAINT adprintformatitem_graphdescr FOREIGN KEY (description_printformatitem_id)
      REFERENCES adprtfi (ad_printformatitem_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_printlabel : adprtlbl
--

ALTER TABLE adprtlbl ADD
  CONSTRAINT adlabelprinter_printlabel FOREIGN KEY (ad_labelprinter_id)
      REFERENCES adlblprt (ad_labelprinter_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtlbl ADD
  CONSTRAINT adtable_adprintlabel FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_printlabelline : adprtll
--

ALTER TABLE adprtll ADD
  CONSTRAINT adcolumn_adprintlabelline FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtll ADD
  CONSTRAINT adlabelprintfunc_labelline FOREIGN KEY (ad_labelprinterfunction_id)
      REFERENCES adlblprtf (ad_labelprinterfunction_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtll ADD
  CONSTRAINT adprintlabel_adprintlabelline FOREIGN KEY (ad_printlabel_id)
      REFERENCES adprtlbl (ad_printlabel_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_printlabelline_trl : adprtllt
--

ALTER TABLE adprtllt ADD
  CONSTRAINT adlanguage_adplabellinetrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprtllt ADD
  CONSTRAINT adprintlabelline_trl FOREIGN KEY (ad_printlabelline_id)
      REFERENCES adprtll (ad_printlabelline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_printpaper : adprtp
--


--
-- Table : ad_printtableformat : adprttf
--

ALTER TABLE adprttf ADD
  CONSTRAINT adimage_adprinttableformat FOREIGN KEY (ad_image_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprttf ADD
  CONSTRAINT adprintcolor_tablefunctbg FOREIGN KEY (functbg_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprttf ADD
  CONSTRAINT adprintcolor_tablefunctfg FOREIGN KEY (functfg_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprttf ADD
  CONSTRAINT adprintcolor_tablehdrline FOREIGN KEY (hdrline_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprttf ADD
  CONSTRAINT adprintcolor_tablehdrtextbg FOREIGN KEY (hdrtextbg_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprttf ADD
  CONSTRAINT adprintcolor_tablehdrtextfg FOREIGN KEY (hdrtextfg_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprttf ADD
  CONSTRAINT adprintcolor_tableline FOREIGN KEY (line_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprttf ADD
  CONSTRAINT adprintfont_tableformatfunc FOREIGN KEY (funct_printfont_id)
      REFERENCES adprtfnt (ad_printfont_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprttf ADD
  CONSTRAINT adprintfont_tablehdr FOREIGN KEY (hdr_printfont_id)
      REFERENCES adprtfnt (ad_printfont_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_private_access : adpvtacc
--

ALTER TABLE adpvtacc ADD
  CONSTRAINT adtable_adprivateaccess FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adpvtacc ADD
  CONSTRAINT aduser_adprivateaccess FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_process : ad_process
--

ALTER TABLE ad_process ADD
  CONSTRAINT adbrowse_adprocess FOREIGN KEY (ad_browse_id)
      REFERENCES ad_browse (ad_browse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_process ADD
  CONSTRAINT adform_adprocess FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_process ADD
  CONSTRAINT adprintformat_adprocess FOREIGN KEY (ad_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_process ADD
  CONSTRAINT adreportview_adprocess FOREIGN KEY (ad_reportview_id)
      REFERENCES adrptvw (ad_reportview_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_process ADD
  CONSTRAINT adworkflow_adprocess FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_process ADD
  CONSTRAINT entityt_adprocess FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_process_access : adprcacc
--

ALTER TABLE adprcacc ADD
  CONSTRAINT ad_processaccess_client FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprcacc ADD
  CONSTRAINT ad_processtaccess_org FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprcacc ADD
  CONSTRAINT adprocess_adprocessaccess FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adprcacc ADD
  CONSTRAINT adrole_adprocessaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_process_para : adprcp
--

ALTER TABLE adprcp ADD
  CONSTRAINT adelement_adprocesspara FOREIGN KEY (ad_element_id)
      REFERENCES ad_element (ad_element_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprcp ADD
  CONSTRAINT adprocess_adprocesspara FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adprcp ADD
  CONSTRAINT adreference_adprocesspara FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprcp ADD
  CONSTRAINT adreferencevalue_adprocpara FOREIGN KEY (ad_reference_value_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprcp ADD
  CONSTRAINT advalrule_ad_processpara FOREIGN KEY (ad_val_rule_id)
      REFERENCES advalr (ad_val_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprcp ADD
  CONSTRAINT entityt_adprocesspara FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_process_para_trl : adprcpt
--

ALTER TABLE adprcpt ADD
  CONSTRAINT adlanguage_adprocessparatrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprcpt ADD
  CONSTRAINT adprocpara_adprocparatrl FOREIGN KEY (ad_process_para_id)
      REFERENCES adprcp (ad_process_para_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_process_trl : adprct
--

ALTER TABLE adprct ADD
  CONSTRAINT ad_language_ad_process_trl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adprct ADD
  CONSTRAINT ad_process_ad_process_trl FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_recentitem : adrcti
--

ALTER TABLE adrcti ADD
  CONSTRAINT admenu_adrecentitem FOREIGN KEY (ad_menu_id)
      REFERENCES ad_menu (ad_menu_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adrcti ADD
  CONSTRAINT adrole_adrecentitem FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adrcti ADD
  CONSTRAINT adtab_adrecentitem FOREIGN KEY (ad_tab_id)
      REFERENCES ad_tab (ad_tab_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adrcti ADD
  CONSTRAINT adtable_adrecentitem FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adrcti ADD
  CONSTRAINT aduser_adrecentitem FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adrcti ADD
  CONSTRAINT adwindow_adrecentitem FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_record_access : adrcdacc
--

ALTER TABLE adrcdacc ADD
  CONSTRAINT adrole_ardecordaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adrcdacc ADD
  CONSTRAINT adtable_adrecordaccess FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_ref_list : adrefl
--

ALTER TABLE adrefl ADD
  CONSTRAINT ad_reference_reflist FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adrefl ADD
  CONSTRAINT ad_reflist_client FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adrefl ADD
  CONSTRAINT ad_reflist_org FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adrefl ADD
  CONSTRAINT entityt_adreflist FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_ref_list_trl : adreflt
--

ALTER TABLE adreflt ADD
  CONSTRAINT ad_language_reflisttrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adreflt ADD
  CONSTRAINT ad_reflisttrl FOREIGN KEY (ad_ref_list_id)
      REFERENCES adrefl (ad_ref_list_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_ref_table : adreftbl
--

ALTER TABLE adreftbl ADD
  CONSTRAINT ad_column_reftable_display FOREIGN KEY (ad_display)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adreftbl ADD
  CONSTRAINT ad_column_reftable_id FOREIGN KEY (ad_key)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adreftbl ADD
  CONSTRAINT ad_reference_reftable FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adreftbl ADD
  CONSTRAINT add_table_reftable FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adreftbl ADD
  CONSTRAINT adwindow_adreftable FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adreftbl ADD
  CONSTRAINT entityt_adreftable FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adreftbl ADD
  CONSTRAINT ref_tableclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adreftbl ADD
  CONSTRAINT ref_tableorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_reference : adref
--

ALTER TABLE adref ADD
  CONSTRAINT entityt_adreference FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adref ADD
  CONSTRAINT referenceclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adref ADD
  CONSTRAINT referenceorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_reference_trl : adreft
--

ALTER TABLE adreft ADD
  CONSTRAINT ad_language_referencetrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adreft ADD
  CONSTRAINT ad_referencetrl FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_registration : adreg
--

ALTER TABLE adreg ADD
  CONSTRAINT adsystem_adregistration FOREIGN KEY (ad_system_id, ad_client_id)
      REFERENCES ad_system (ad_system_id, ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adreg ADD
  CONSTRAINT ccurrency_adregistration FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adreg ADD
  CONSTRAINT clocation_adregistration FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_relationtype : adreltyp
--

ALTER TABLE adreltyp ADD
  CONSTRAINT adreferencesource_adrelationty FOREIGN KEY (ad_reference_source_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adreltyp ADD
  CONSTRAINT adreferencetarget_adrelationty FOREIGN KEY (ad_reference_target_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_replication : adrepl
--

ALTER TABLE adrepl ADD
  CONSTRAINT adreplicationstrategy_adrep FOREIGN KEY (ad_replicationstrategy_id)
      REFERENCES adreplstr (ad_replicationstrategy_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adrepl ADD
  CONSTRAINT remoteclient_adreplication FOREIGN KEY (remote_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adrepl ADD
  CONSTRAINT remoteorg_adreplication FOREIGN KEY (remote_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_replication_log : adrepll
--

ALTER TABLE adrepll ADD
  CONSTRAINT adreplicationrun_adreplog FOREIGN KEY (ad_replication_run_id)
      REFERENCES adreplr (ad_replication_run_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adrepll ADD
  CONSTRAINT adreptable_adreplog FOREIGN KEY (ad_replicationtable_id)
      REFERENCES adrepltbl (ad_replicationtable_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : ad_replication_run : adreplr
--

ALTER TABLE adreplr ADD
  CONSTRAINT adreplication_adreprun FOREIGN KEY (ad_replication_id)
      REFERENCES adrepl (ad_replication_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_replicationdocument : adrepdoc
--

ALTER TABLE adrepdoc ADD
  CONSTRAINT adtable_adreplicationdocument FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adrepdoc ADD
  CONSTRAINT cdoctype_adreplicationdocument FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_replicationorgaccess : adrepoa
--

ALTER TABLE adrepoa ADD
  CONSTRAINT adreplicationstrategy_adreplic FOREIGN KEY (ad_replicationstrategy_id)
      REFERENCES adreplstr (ad_replicationstrategy_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_replicationroleaccess : adrepra
--

ALTER TABLE adrepra ADD
  CONSTRAINT adreplicationstrategy_adreplic FOREIGN KEY (ad_replicationstrategy_id)
      REFERENCES adreplstr (ad_replicationstrategy_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adrepra ADD
  CONSTRAINT adrole_adreplicationroleaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_replicationstrategy : adreplstr
--

ALTER TABLE adreplstr ADD
  CONSTRAINT entityt_adreplicationstrategy FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adreplstr ADD
  CONSTRAINT expprocessor_adreplicationstra FOREIGN KEY (exp_processor_id)
      REFERENCES expprc (exp_processor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_replicationtable : adrepltbl
--

ALTER TABLE adrepltbl ADD
  CONSTRAINT adrepstrategy_adreptable FOREIGN KEY (ad_replicationstrategy_id)
      REFERENCES adreplstr (ad_replicationstrategy_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adrepltbl ADD
  CONSTRAINT adtable_adreplicationtable FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adrepltbl ADD
  CONSTRAINT entityt_adreplicationtable FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_reportview : adrptvw
--

ALTER TABLE adrptvw ADD
  CONSTRAINT adtable_adreportview FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adrptvw ADD
  CONSTRAINT entityt_adreportview FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_reportview_col : adrptvwc
--

ALTER TABLE adrptvwc ADD
  CONSTRAINT adcolumn_adreportviewcol FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adrptvwc ADD
  CONSTRAINT adreportview_col FOREIGN KEY (ad_reportview_id)
      REFERENCES adrptvw (ad_reportview_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_reportview_trl : adrptvt
--

ALTER TABLE adrptvt ADD
  CONSTRAINT adlangu_adreportviewtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adrptvt ADD
  CONSTRAINT adreportview_adreportviewtrl FOREIGN KEY (ad_reportview_id)
      REFERENCES adrptvw (ad_reportview_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_role : ad_role
--

ALTER TABLE ad_role ADD
  CONSTRAINT ad_roleclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_role ADD
  CONSTRAINT ad_roleorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_role ADD
  CONSTRAINT adtree_adrole FOREIGN KEY (ad_tree_menu_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_role ADD
  CONSTRAINT adtreeorg_adrole FOREIGN KEY (ad_tree_org_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_role ADD
  CONSTRAINT adusersupervisor_adrole FOREIGN KEY (supervisor_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_role ADD
  CONSTRAINT c_currency_ad_role FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_role_included : adrinc
--

ALTER TABLE adrinc ADD
  CONSTRAINT ad_role_included_parent FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adrinc ADD
  CONSTRAINT ad_role_included_role FOREIGN KEY (included_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_role_orgaccess : adroacc
--

ALTER TABLE adroacc ADD
  CONSTRAINT adorg_adroleorgaccess FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adroacc ADD
  CONSTRAINT adrole_adroleorgaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_rule : ad_rule
--

ALTER TABLE ad_rule ADD
  CONSTRAINT entityt_adrule FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_scheduler : adsched
--

ALTER TABLE adsched ADD
  CONSTRAINT adprocess_adscheduler FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adsched ADD
  CONSTRAINT adtable_adscheduler FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adsched ADD
  CONSTRAINT aduser_adscheduler FOREIGN KEY (supervisor_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_scheduler_para : adschedp
--

ALTER TABLE adschedp ADD
  CONSTRAINT adprocesspara_adschedulerpara FOREIGN KEY (ad_process_para_id)
      REFERENCES adprcp (ad_process_para_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adschedp ADD
  CONSTRAINT adscheduler_adschedulerpara FOREIGN KEY (ad_scheduler_id)
      REFERENCES adsched (ad_scheduler_id)
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.ad_scheduler_para
  OWNER TO adempiere;

--
-- Table : ad_schedulerlog : adschedl
--

ALTER TABLE adschedl ADD
  CONSTRAINT adscheduler_log FOREIGN KEY (ad_scheduler_id)
      REFERENCES adsched (ad_scheduler_id)
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.ad_schedulerlog
  OWNER TO adempiere;

--
-- Table : ad_schedulerrecipient : adschedr
--

ALTER TABLE adschedr ADD
  CONSTRAINT adrole_adschedulerrecipient FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adschedr ADD
  CONSTRAINT adscheduler_recipient FOREIGN KEY (ad_scheduler_id)
      REFERENCES adsched (ad_scheduler_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adschedr ADD
  CONSTRAINT aduser_adschedulerrecipient FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_searchdefinition : adsrchdef
--

ALTER TABLE adsrchdef ADD
  CONSTRAINT adcolumn_adsearchdefinition FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adsrchdef ADD
  CONSTRAINT adtable_adsearchdefinition FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adsrchdef ADD
  CONSTRAINT adwindow_adsearchdefinition FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adsrchdef ADD
  CONSTRAINT powindow_adsearchdefinition FOREIGN KEY (po_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_sequence : adseq
--

ALTER TABLE adseq ADD
  CONSTRAINT sequenceclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adseq ADD
  CONSTRAINT sequenceorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_sequence_audit : adseqaud
--

ALTER TABLE adseqaud ADD
  CONSTRAINT ad_sequence_sequenceaudit FOREIGN KEY (ad_sequence_id)
      REFERENCES adseq (ad_sequence_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adseqaud ADD
  CONSTRAINT adtable_adsequenceaudit FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adseqaud ADD
  CONSTRAINT sequence_auditclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adseqaud ADD
  CONSTRAINT sequence_auditorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_sequence_no : adseqnum
--

ALTER TABLE adseqnum ADD
  CONSTRAINT ad_sequence_sequenceno FOREIGN KEY (ad_sequence_id)
      REFERENCES adseq (ad_sequence_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adseqnum ADD
  CONSTRAINT sequence_noclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adseqnum ADD
  CONSTRAINT sequence_noorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_session : ad_session
--

ALTER TABLE ad_session ADD
  CONSTRAINT adrole_adsession FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.ad_session
  OWNER TO adempiere;

--
-- Table : ad_sysconfig : adsyscfg
--

ALTER TABLE adsyscfg ADD
  CONSTRAINT entityt_adsysconfig FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_system : ad_system
--


--
-- Table : ad_tab : ad_tab
--

ALTER TABLE ad_tab ADD
  CONSTRAINT ad_column_ad_tab FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_tab ADD
  CONSTRAINT ad_table_tab FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_tab ADD
  CONSTRAINT ad_window_tab FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ad_tab ADD
  CONSTRAINT adcolumn_adtabsortorder FOREIGN KEY (ad_columnsortorder_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_tab ADD
  CONSTRAINT adcolumn_adtabsortyesno FOREIGN KEY (ad_columnsortyesno_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_tab ADD
  CONSTRAINT adcontextinfo_adtab FOREIGN KEY (ad_contextinfo_id)
      REFERENCES adctxi (ad_contextinfo_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_tab ADD
  CONSTRAINT adimage_adtab FOREIGN KEY (ad_image_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_tab ADD
  CONSTRAINT adprocess_adtab FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_tab ADD
  CONSTRAINT adtab_included FOREIGN KEY (included_tab_id)
      REFERENCES ad_tab (ad_tab_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_tab ADD
  CONSTRAINT entityt_adtab FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_tab ADD
  CONSTRAINT parentcolumn_adtab FOREIGN KEY (parent_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_tab ADD
  CONSTRAINT tabclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_tab ADD
  CONSTRAINT taborg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_tab_trl : ad_tab_trl
--

ALTER TABLE ad_tab_trl ADD
  CONSTRAINT ad_language_tabtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_tab_trl ADD
  CONSTRAINT ad_tabtrl FOREIGN KEY (ad_tab_id)
      REFERENCES ad_tab (ad_tab_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_table : ad_table
--

ALTER TABLE ad_table ADD
  CONSTRAINT ad_valrule_table FOREIGN KEY (ad_val_rule_id)
      REFERENCES advalr (ad_val_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_table ADD
  CONSTRAINT ad_window_table FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ad_table ADD
  CONSTRAINT adcontextinfo_adtable FOREIGN KEY (ad_contextinfo_id)
      REFERENCES adctxi (ad_contextinfo_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_table ADD
  CONSTRAINT adwindowpo_adtable FOREIGN KEY (po_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_table ADD
  CONSTRAINT entityt_adtable FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_table ADD
  CONSTRAINT tableclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_table ADD
  CONSTRAINT tableorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_table_access : adtblacc
--

ALTER TABLE adtblacc ADD
  CONSTRAINT ad_dataaccessclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adtblacc ADD
  CONSTRAINT ad_dataaccessorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adtblacc ADD
  CONSTRAINT adrole_adtableaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adtblacc ADD
  CONSTRAINT adtable_adtableaccess FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_table_process : adtblprc
--

ALTER TABLE adtblprc ADD
  CONSTRAINT adprocess_adtableprocess FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adtblprc ADD
  CONSTRAINT adtable_adtableprocess FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adtblprc ADD
  CONSTRAINT entityt_adtableprocess FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_table_scriptvalidator : adtblsval
--

ALTER TABLE adtblsval ADD
  CONSTRAINT adrule_adtablescriptvalidator FOREIGN KEY (ad_rule_id)
      REFERENCES ad_rule (ad_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adtblsval ADD
  CONSTRAINT adtable_adtablescriptvalidator FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_table_trl : adtblt
--

ALTER TABLE adtblt ADD
  CONSTRAINT adlanguage_adtabletrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adtblt ADD
  CONSTRAINT adtable_adtabletrl FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_task : ad_task
--

ALTER TABLE ad_task ADD
  CONSTRAINT entityt_adtask FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_task ADD
  CONSTRAINT taskclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_task ADD
  CONSTRAINT taskorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_task_access : adtskacc
--

ALTER TABLE adtskacc ADD
  CONSTRAINT ad_taskaccess_client FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adtskacc ADD
  CONSTRAINT ad_taskaccess_org FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adtskacc ADD
  CONSTRAINT adrole_adtaskaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adtskacc ADD
  CONSTRAINT adtask_adtaskaccess FOREIGN KEY (ad_task_id)
      REFERENCES ad_task (ad_task_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_task_trl : adtskt
--

ALTER TABLE adtskt ADD
  CONSTRAINT ad_language_tasktrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adtskt ADD
  CONSTRAINT ad_tasktrl FOREIGN KEY (ad_task_id)
      REFERENCES ad_task (ad_task_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_taskinstance : adtski
--

ALTER TABLE adtski ADD
  CONSTRAINT ad_task_taskinstance FOREIGN KEY (ad_task_id)
      REFERENCES ad_task (ad_task_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adtski ADD
  CONSTRAINT taskinstanceclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adtski ADD
  CONSTRAINT taskinstanceorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_token : ad_token
--

ALTER TABLE ad_token ADD
  CONSTRAINT adtokendefinition_adtoken FOREIGN KEY (ad_tokendefinition_id)
      REFERENCES adtkndfn (ad_tokendefinition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_token ADD
  CONSTRAINT aduser_adtoken FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_tokendefinition : adtkndfn
--


--
-- Table : ad_tree : ad_tree
--

ALTER TABLE ad_tree ADD
  CONSTRAINT adtable_adtree FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_tree_favorite : adtfav
--

ALTER TABLE adtfav ADD
  CONSTRAINT adrole_adtreefavorite FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adtfav ADD
  CONSTRAINT aduser_adtreefavorite FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_tree_favorite_node : adtfavn
--

ALTER TABLE adtfavn ADD
  CONSTRAINT admenu_adtreefavoritenode FOREIGN KEY (ad_menu_id)
      REFERENCES ad_menu (ad_menu_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adtfavn ADD
  CONSTRAINT adtreefavorite_adtreefavoriten FOREIGN KEY (ad_tree_favorite_id)
      REFERENCES adtfav (ad_tree_favorite_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_treebar : ad_treebar
--

ALTER TABLE ad_treebar ADD
  CONSTRAINT adtree_adtreebar FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ad_treebar ADD
  CONSTRAINT aduser_adtreebar FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_treenode : adtreen
--

ALTER TABLE adtreen ADD
  CONSTRAINT adtree_adtreenode FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_treenodebp : adtreenbp
--

ALTER TABLE adtreenbp ADD
  CONSTRAINT adtree_adtreenodebp FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_treenodecmc : adtreencmc
--

ALTER TABLE adtreencmc ADD
  CONSTRAINT adtree_adtreenodecmc FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_treenodecmm : adtreencmm
--

ALTER TABLE adtreencmm ADD
  CONSTRAINT adtree_adtreenodecmm FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_treenodecms : adtreencms
--

ALTER TABLE adtreencms ADD
  CONSTRAINT adtree_adtreenodecms FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_treenodecmt : adtreencmt
--

ALTER TABLE adtreencmt ADD
  CONSTRAINT adtree_adtreenodecmt FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_treenodemm : adtreenmm
--

ALTER TABLE adtreenmm ADD
  CONSTRAINT adtree_adtreenodemm FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_treenodepr : adtreenpr
--

ALTER TABLE adtreenpr ADD
  CONSTRAINT adtree_adtreenodepr FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_treenodeu1 : adtnu1
--

ALTER TABLE adtnu1 ADD
  CONSTRAINT adtree_adtreenodeu1 FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_treenodeu2 : adtnu2
--

ALTER TABLE adtnu2 ADD
  CONSTRAINT adtree_adtreenodeu2 FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_treenodeu3 : adtnu3
--

ALTER TABLE adtnu3 ADD
  CONSTRAINT adtree_adtreenodeu3 FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_treenodeu4 : adtnu4
--

ALTER TABLE adtnu4 ADD
  CONSTRAINT adtree_adtreenodeu4 FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_user : ad_user
--

ALTER TABLE ad_user ADD
  CONSTRAINT ad_user_client FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_user ADD
  CONSTRAINT ad_user_org FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_user ADD
  CONSTRAINT ademailconfig_aduser FOREIGN KEY (ad_emailconfig_id)
      REFERENCES ademcfg (ad_emailconfig_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_user ADD
  CONSTRAINT adorgtrx_aduser FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_user ADD
  CONSTRAINT aduser_supervisor FOREIGN KEY (supervisor_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_user ADD
  CONSTRAINT cbpartner_aduser FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ad_user ADD
  CONSTRAINT cbplocation_aduser FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_user ADD
  CONSTRAINT ccampaign_aduser FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_user ADD
  CONSTRAINT cgreeting_aduser FOREIGN KEY (c_greeting_id)
      REFERENCES c_greeting (c_greeting_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_user ADD
  CONSTRAINT cjob_aduser FOREIGN KEY (c_job_id)
      REFERENCES c_job (c_job_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_user ADD
  CONSTRAINT clocation_aduser FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_user ADD
  CONSTRAINT salesrep_aduser FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_user_orgaccess : adusroa
--

ALTER TABLE adusroa ADD
  CONSTRAINT adorg_aduserorgaccess FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adusroa ADD
  CONSTRAINT aduser_aduserorgaccess FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_user_roles : adusrr
--

ALTER TABLE adusrr ADD
  CONSTRAINT ad_userrolesclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adusrr ADD
  CONSTRAINT ad_userrolesorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adusrr ADD
  CONSTRAINT adrole_aduserroles FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adusrr ADD
  CONSTRAINT aduser_userroles FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_user_substitute : adusrsub
--

ALTER TABLE adusrsub ADD
  CONSTRAINT aduser_adusersub FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adusrsub ADD
  CONSTRAINT adusersub_ad_usersub FOREIGN KEY (substitute_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_userbpaccess : adusrbpa
--

ALTER TABLE adusrbpa ADD
  CONSTRAINT aduser_aduserbpaccess FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adusrbpa ADD
  CONSTRAINT rrequesttype_aduserbpaccess FOREIGN KEY (r_requesttype_id)
      REFERENCES rreqtyp (r_requesttype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_userdef_field : adusrdeff
--

ALTER TABLE adusrdeff ADD
  CONSTRAINT adfield_aduserdeffield FOREIGN KEY (ad_field_id)
      REFERENCES ad_field (ad_field_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adusrdeff ADD
  CONSTRAINT aduserdeftab_aduserdeffield FOREIGN KEY (ad_userdef_tab_id)
      REFERENCES adusrdtab (ad_userdef_tab_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_userdef_tab : adusrdtab
--

ALTER TABLE adusrdtab ADD
  CONSTRAINT adtab_aduserdeftab FOREIGN KEY (ad_tab_id)
      REFERENCES ad_tab (ad_tab_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adusrdtab ADD
  CONSTRAINT aduserdefwin_aduserdeftab FOREIGN KEY (ad_userdef_win_id)
      REFERENCES adusrdwin (ad_userdef_win_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_userdef_win : adusrdwin
--

ALTER TABLE adusrdwin ADD
  CONSTRAINT adlangu_aduserdefwin FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adusrdwin ADD
  CONSTRAINT adrole_aduserdefwin FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adusrdwin ADD
  CONSTRAINT aduser_aduserdefwin FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adusrdwin ADD
  CONSTRAINT adwindow_aduserdefwin FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_usermail : adusrml
--

ALTER TABLE adusrml ADD
  CONSTRAINT aduser_adusermail FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adusrml ADD
  CONSTRAINT rmailtext_adusermail FOREIGN KEY (r_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adusrml ADD
  CONSTRAINT wmailmsg_adusermail FOREIGN KEY (w_mailmsg_id)
      REFERENCES w_mailmsg (w_mailmsg_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_userquery : adusrqry
--

ALTER TABLE adusrqry ADD
  CONSTRAINT adtab_aduserquery FOREIGN KEY (ad_tab_id)
      REFERENCES ad_tab (ad_tab_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adusrqry ADD
  CONSTRAINT adtable_aduserquery FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adusrqry ADD
  CONSTRAINT aduser_aduserquery FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_val_rule : advalr
--

ALTER TABLE advalr ADD
  CONSTRAINT entityt_advalrule FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE advalr ADD
  CONSTRAINT val_ruleclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE advalr ADD
  CONSTRAINT val_ruleorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_view : ad_view
--

ALTER TABLE ad_view ADD
  CONSTRAINT entityt_adview FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_view_column : advwclm
--

ALTER TABLE advwclm ADD
  CONSTRAINT adcolumn_adviewcolumn FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE advwclm ADD
  CONSTRAINT adview_adviewcolumn FOREIGN KEY (ad_view_id)
      REFERENCES ad_view (ad_view_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE advwclm ADD
  CONSTRAINT adviewdefinition_adviewcolumn FOREIGN KEY (ad_view_definition_id)
      REFERENCES advwdfn (ad_view_definition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE advwclm ADD
  CONSTRAINT entityt_adviewcolumn FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_view_column_trl : advwclmt
--

ALTER TABLE advwclmt ADD
  CONSTRAINT adlangu_adviewcolumntrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE advwclmt ADD
  CONSTRAINT adviewcolumn_adviewcolumntrl FOREIGN KEY (ad_view_column_id)
      REFERENCES advwclm (ad_view_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_view_definition : advwdfn
--

ALTER TABLE advwdfn ADD
  CONSTRAINT adtable_adviewdefinition FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE advwdfn ADD
  CONSTRAINT adview_adviewdefinition FOREIGN KEY (ad_view_id)
      REFERENCES ad_view (ad_view_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_view_trl : advwt
--

ALTER TABLE advwt ADD
  CONSTRAINT adlangu_adviewtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE advwt ADD
  CONSTRAINT adview_adviewtrl FOREIGN KEY (ad_view_id)
      REFERENCES ad_view (ad_view_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_wf_activity : adwfact
--

ALTER TABLE adwfact ADD
  CONSTRAINT admessage_adwfactivity FOREIGN KEY (ad_message_id)
      REFERENCES ad_message (ad_message_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfact ADD
  CONSTRAINT adtable_adwfactivity FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfact ADD
  CONSTRAINT aduser_adwfactivity FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE adwfact ADD
  CONSTRAINT adwfnode_adwfactivity FOREIGN KEY (ad_wf_node_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adwfact ADD
  CONSTRAINT adwfprocess_adwfactivity FOREIGN KEY (ad_wf_process_id)
      REFERENCES adwfprc (ad_wf_process_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adwfact ADD
  CONSTRAINT adwfresponsible_adwfactivity FOREIGN KEY (ad_wf_responsible_id)
      REFERENCES adwfrsp (ad_wf_responsible_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE adwfact ADD
  CONSTRAINT adworkflow_adwfactivity FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_wf_activityresult : adwfactr
--

ALTER TABLE adwfactr ADD
  CONSTRAINT adwfactivity_adwfactresult FOREIGN KEY (ad_wf_activity_id)
      REFERENCES adwfact (ad_wf_activity_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_wf_block : adwfblk
--

ALTER TABLE adwfblk ADD
  CONSTRAINT adworkflow_adwfblock FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_wf_eventaudit : adwfevtaud
--

ALTER TABLE adwfevtaud ADD
  CONSTRAINT adtable_adwfeventaudit FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfevtaud ADD
  CONSTRAINT aduser_adwfeventaudit FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfevtaud ADD
  CONSTRAINT adwfnode_adwfeventaudit FOREIGN KEY (ad_wf_node_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfevtaud ADD
  CONSTRAINT adwfprocess_adwfeventaudit FOREIGN KEY (ad_wf_process_id)
      REFERENCES adwfprc (ad_wf_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfevtaud ADD
  CONSTRAINT adwfresponsib_adwfeventaudit FOREIGN KEY (ad_wf_responsible_id)
      REFERENCES adwfrsp (ad_wf_responsible_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_wf_nextcondition : adwfncnd
--

ALTER TABLE adwfncnd ADD
  CONSTRAINT adcolumn_adwfnextcondition FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfncnd ADD
  CONSTRAINT adwfnodenext_adwfnextcond FOREIGN KEY (ad_wf_nodenext_id)
      REFERENCES adwfnn (ad_wf_nodenext_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adwfncnd ADD
  CONSTRAINT entityt_adwfnextcondition FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_wf_node : ad_wf_node
--

ALTER TABLE ad_wf_node ADD
  CONSTRAINT adbrowse_adwfnode FOREIGN KEY (ad_browse_id)
      REFERENCES ad_browse (ad_browse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT adcolumn_adwfnode FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT adform_adwfnode FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT adimage_adwfnode FOREIGN KEY (ad_image_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT adprocess_adwfnode FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT adtask_adwfnode FOREIGN KEY (ad_task_id)
      REFERENCES ad_task (ad_task_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT adview_adwfnode FOREIGN KEY (ad_view_id)
      REFERENCES ad_view (ad_view_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT adwfblock_adwfnode FOREIGN KEY (ad_wf_block_id)
      REFERENCES adwfblk (ad_wf_block_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT adwfresponsible_adwfnode FOREIGN KEY (ad_wf_responsible_id)
      REFERENCES adwfrsp (ad_wf_responsible_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT adwindow_adwfnode FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT adworkflow_adwfnode FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT adworkflow_adwfnodesubflow FOREIGN KEY (workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT cbpartner_adwfnode FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT entityt_adwfnode FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT rmailtext_adwfnode FOREIGN KEY (r_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT sresource_adwfnode FOREIGN KEY (s_resource_id)
      REFERENCES s_resource (s_resource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT wf_nodeclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_wf_node ADD
  CONSTRAINT wf_nodeorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_wf_node_para : adwfnp
--

ALTER TABLE adwfnp ADD
  CONSTRAINT adprocesspara_adwfnodepara FOREIGN KEY (ad_process_para_id)
      REFERENCES adprcp (ad_process_para_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adwfnp ADD
  CONSTRAINT adwfnode_adwfnodepara FOREIGN KEY (ad_wf_node_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfnp ADD
  CONSTRAINT entityt_adwfnodepara FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_wf_node_trl : adwfnt
--

ALTER TABLE adwfnt ADD
  CONSTRAINT ad_language_wfnodetrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfnt ADD
  CONSTRAINT ad_wfnodetrl FOREIGN KEY (ad_wf_node_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_wf_nodenext : adwfnn
--

ALTER TABLE adwfnn ADD
  CONSTRAINT adwfnode_adwfnodenext FOREIGN KEY (ad_wf_node_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adwfnn ADD
  CONSTRAINT adwfnodenext_adwfnodenext FOREIGN KEY (ad_wf_next_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adwfnn ADD
  CONSTRAINT entityt_adwfnodenext FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfnn ADD
  CONSTRAINT wf_nodenextclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfnn ADD
  CONSTRAINT wf_nodenextorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_wf_process : adwfprc
--

ALTER TABLE adwfprc ADD
  CONSTRAINT admessage_adwfprocess FOREIGN KEY (ad_message_id)
      REFERENCES ad_message (ad_message_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfprc ADD
  CONSTRAINT adtable_adwfprocess FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfprc ADD
  CONSTRAINT aduser_adwfprocess FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfprc ADD
  CONSTRAINT adwfprocess_adwfprocess FOREIGN KEY (ad_wf_process_id)
      REFERENCES adwfprc (ad_wf_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfprc ADD
  CONSTRAINT adwfresponsible_adwfprocess FOREIGN KEY (ad_wf_responsible_id)
      REFERENCES adwfrsp (ad_wf_responsible_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfprc ADD
  CONSTRAINT adworkflow_adwfprocess FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adwfprc ADD
  CONSTRAINT wf_instanceclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfprc ADD
  CONSTRAINT wf_instanceorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_wf_processdata : adwfpdta
--

ALTER TABLE adwfpdta ADD
  CONSTRAINT adwfproccess_adwfprocessdata FOREIGN KEY (ad_wf_process_id)
      REFERENCES adwfprc (ad_wf_process_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_wf_responsible : adwfrsp
--

ALTER TABLE adwfrsp ADD
  CONSTRAINT adorg_adwfresponsible FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfrsp ADD
  CONSTRAINT adrole_adwfresponsible FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfrsp ADD
  CONSTRAINT aduser_adwfresponsible FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfrsp ADD
  CONSTRAINT entityt_adwfresponsible FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_window : ad_window
--

ALTER TABLE ad_window ADD
  CONSTRAINT adcolor_adwindow FOREIGN KEY (ad_color_id)
      REFERENCES ad_color (ad_color_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_window ADD
  CONSTRAINT adcontextinfo_adwindow FOREIGN KEY (ad_contextinfo_id)
      REFERENCES adctxi (ad_contextinfo_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_window ADD
  CONSTRAINT adimage_adwindow FOREIGN KEY (ad_image_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_window ADD
  CONSTRAINT entityt_adwindow FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_window ADD
  CONSTRAINT windowclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ad_window ADD
  CONSTRAINT windoworg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_window_access : adwinacc
--

ALTER TABLE adwinacc ADD
  CONSTRAINT ad_functaccess_client FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwinacc ADD
  CONSTRAINT ad_functaccessorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwinacc ADD
  CONSTRAINT adrole_adwindowaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adwinacc ADD
  CONSTRAINT adwindow_adwindowaccess FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_window_trl : adwint
--

ALTER TABLE adwint ADD
  CONSTRAINT ad_language_windowtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwint ADD
  CONSTRAINT ad_windowtrl FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_workbench : adwb
--

ALTER TABLE adwb ADD
  CONSTRAINT adcolor_adworkbench FOREIGN KEY (ad_color_id)
      REFERENCES ad_color (ad_color_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwb ADD
  CONSTRAINT adcolumn_adworkbench FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwb ADD
  CONSTRAINT adimage_adworkbench FOREIGN KEY (ad_image_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwb ADD
  CONSTRAINT entityt_adworkbench FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_workbench_trl : adwbt
--

ALTER TABLE adwbt ADD
  CONSTRAINT adlanguage_adworkbenchtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwbt ADD
  CONSTRAINT adworkbench_adworkbenchtrl FOREIGN KEY (ad_workbench_id)
      REFERENCES adwb (ad_workbench_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_workbenchwindow : adwbwin
--

ALTER TABLE adwbwin ADD
  CONSTRAINT adform_adworkbenchwindow FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwbwin ADD
  CONSTRAINT adprocess_adworkbenchwindow FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwbwin ADD
  CONSTRAINT adtask_adworkbenchwindow FOREIGN KEY (ad_task_id)
      REFERENCES ad_task (ad_task_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwbwin ADD
  CONSTRAINT adwindow_adworkbenchwindow FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwbwin ADD
  CONSTRAINT adworkbench_adworkbenchwindow FOREIGN KEY (ad_workbench_id)
      REFERENCES adwb (ad_workbench_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwbwin ADD
  CONSTRAINT entityt_adworkbenchwindow FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_workflow : adwf
--

ALTER TABLE adwf ADD
  CONSTRAINT adtable_adworkflow FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwf ADD
  CONSTRAINT adwfnode_adworkflow FOREIGN KEY (ad_wf_node_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwf ADD
  CONSTRAINT adwfresponsible_adworkflow FOREIGN KEY (ad_wf_responsible_id)
      REFERENCES adwfrsp (ad_wf_responsible_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwf ADD
  CONSTRAINT adworkflowprocessor_adwf FOREIGN KEY (ad_workflowprocessor_id)
      REFERENCES adwfp (ad_workflowprocessor_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE adwf ADD
  CONSTRAINT entityt_adworkflow FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwf ADD
  CONSTRAINT sresource_adworkflow FOREIGN KEY (s_resource_id)
      REFERENCES s_resource (s_resource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwf ADD
  CONSTRAINT workflowclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwf ADD
  CONSTRAINT workfloworg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ad_workflow_access : adwfacc
--

ALTER TABLE adwfacc ADD
  CONSTRAINT ad_workflowaccess_client FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfacc ADD
  CONSTRAINT ad_workflowaccess_org FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwfacc ADD
  CONSTRAINT adrole_adworkflowaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE adwfacc ADD
  CONSTRAINT adworkfow_workflowaccess FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_workflow_trl : adwft
--

ALTER TABLE adwft ADD
  CONSTRAINT ad_language_workflowtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adwft ADD
  CONSTRAINT ad_workflowtrl FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : ad_workflowprocessor : adwfp
--

ALTER TABLE adwfp ADD
  CONSTRAINT aduser_adworkflowprocessor FOREIGN KEY (supervisor_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.ad_workflowprocessor
  OWNER TO adempiere;

--
-- Table : ad_workflowprocessorlog : adwfpl
--

ALTER TABLE adwfpl ADD
  CONSTRAINT adworkflowprocessor_log FOREIGN KEY (ad_workflowprocessor_id)
      REFERENCES adwfp (ad_workflowprocessor_id)
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.ad_workflowprocessorlog
  OWNER TO adempiere;

--
-- Table : ad_zoomcondition : adzmcnd
--

ALTER TABLE adzmcnd ADD
  CONSTRAINT adtable_adzoomcondition FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE adzmcnd ADD
  CONSTRAINT adwindow_adzoomcondition FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : asp_browse : asp_browse
--

ALTER TABLE asp_browse ADD
  CONSTRAINT adbrowse_aspbrowse FOREIGN KEY (ad_browse_id)
      REFERENCES ad_browse (ad_browse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE asp_browse ADD
  CONSTRAINT asplevel_aspbrowse FOREIGN KEY (asp_level_id)
      REFERENCES asp_level (asp_level_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : asp_clientexception : aspclte
--

ALTER TABLE aspclte ADD
  CONSTRAINT adbrowse_aspclientexception FOREIGN KEY (ad_browse_id)
      REFERENCES ad_browse (ad_browse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aspclte ADD
  CONSTRAINT adfield_aspclientexception FOREIGN KEY (ad_field_id)
      REFERENCES ad_field (ad_field_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aspclte ADD
  CONSTRAINT adform_aspclientexception FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aspclte ADD
  CONSTRAINT adprocess_aspclientexception FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aspclte ADD
  CONSTRAINT adprocesspara_aspclientexcepti FOREIGN KEY (ad_process_para_id)
      REFERENCES adprcp (ad_process_para_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aspclte ADD
  CONSTRAINT adtab_aspclientexception FOREIGN KEY (ad_tab_id)
      REFERENCES ad_tab (ad_tab_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aspclte ADD
  CONSTRAINT adtask_aspclientexception FOREIGN KEY (ad_task_id)
      REFERENCES ad_task (ad_task_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aspclte ADD
  CONSTRAINT adwfnode_aspclientexception FOREIGN KEY (ad_wf_node_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aspclte ADD
  CONSTRAINT adwindow_aspclientexception FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aspclte ADD
  CONSTRAINT adworkflow_aspclientexception FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : asp_clientlevel : aspcltlvl
--

ALTER TABLE aspcltlvl ADD
  CONSTRAINT asplevel_aspclientlevel FOREIGN KEY (asp_level_id)
      REFERENCES asp_level (asp_level_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aspcltlvl ADD
  CONSTRAINT aspmodule_aspclientlevel FOREIGN KEY (asp_module_id)
      REFERENCES asp_module (asp_module_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : asp_field : asp_field
--

ALTER TABLE asp_field ADD
  CONSTRAINT adfield_aspfield FOREIGN KEY (ad_field_id)
      REFERENCES ad_field (ad_field_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE asp_field ADD
  CONSTRAINT asptab_aspfield FOREIGN KEY (asp_tab_id)
      REFERENCES asp_tab (asp_tab_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : asp_form : asp_form
--

ALTER TABLE asp_form ADD
  CONSTRAINT adform_aspform FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE asp_form ADD
  CONSTRAINT asplevel_aspform FOREIGN KEY (asp_level_id)
      REFERENCES asp_level (asp_level_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : asp_level : asp_level
--

ALTER TABLE asp_level ADD
  CONSTRAINT aspmodule_asplevel FOREIGN KEY (asp_module_id)
      REFERENCES asp_module (asp_module_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : asp_module : asp_module
--


--
-- Table : asp_process : aspprc
--

ALTER TABLE aspprc ADD
  CONSTRAINT adprocess_aspprocess FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aspprc ADD
  CONSTRAINT asplevel_aspprocess FOREIGN KEY (asp_level_id)
      REFERENCES asp_level (asp_level_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : asp_process_para : aspprcp
--

ALTER TABLE aspprcp ADD
  CONSTRAINT adprocesspara_aspprocesspara FOREIGN KEY (ad_process_para_id)
      REFERENCES adprcp (ad_process_para_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aspprcp ADD
  CONSTRAINT aspprocess_aspprocesspara FOREIGN KEY (asp_process_id)
      REFERENCES aspprc (asp_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : asp_tab : asp_tab
--

ALTER TABLE asp_tab ADD
  CONSTRAINT adtab_asptab FOREIGN KEY (ad_tab_id)
      REFERENCES ad_tab (ad_tab_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE asp_tab ADD
  CONSTRAINT aspwindow_asptab FOREIGN KEY (asp_window_id)
      REFERENCES asp_window (asp_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : asp_task : asp_task
--

ALTER TABLE asp_task ADD
  CONSTRAINT adtask_asptask FOREIGN KEY (ad_task_id)
      REFERENCES ad_task (ad_task_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE asp_task ADD
  CONSTRAINT asplevel_asptask FOREIGN KEY (asp_level_id)
      REFERENCES asp_level (asp_level_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : asp_window : asp_window
--

ALTER TABLE asp_window ADD
  CONSTRAINT adwindow_aspwindow FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE asp_window ADD
  CONSTRAINT asplevel_aspwindow FOREIGN KEY (asp_level_id)
      REFERENCES asp_level (asp_level_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : asp_workflow : aspwf
--

ALTER TABLE aspwf ADD
  CONSTRAINT adworkflow_aspworkflow FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE aspwf ADD
  CONSTRAINT asplevel_aspworkflow FOREIGN KEY (asp_level_id)
      REFERENCES asp_level (asp_level_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : b_bid : b_bid
--

ALTER TABLE b_bid ADD
  CONSTRAINT aduser_bbid FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE b_bid ADD
  CONSTRAINT bbuyer_bbid FOREIGN KEY (ad_user_id)
      REFERENCES b_buyer (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE b_bid ADD
  CONSTRAINT bbuyerfunds_bbid FOREIGN KEY (b_buyerfunds_id)
      REFERENCES bbuyerf (b_buyerfunds_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE b_bid ADD
  CONSTRAINT btopic_bbid FOREIGN KEY (b_topic_id)
      REFERENCES b_topic (b_topic_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : b_bidcomment : bbidc
--

ALTER TABLE bbidc ADD
  CONSTRAINT aduser_bidcomment FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE bbidc ADD
  CONSTRAINT btopic_bbidcomment FOREIGN KEY (b_topic_id)
      REFERENCES b_topic (b_topic_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : b_buyer : b_buyer
--

ALTER TABLE b_buyer ADD
  CONSTRAINT aduser_bbuyer FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : b_buyerfunds : bbuyerf
--

ALTER TABLE bbuyerf ADD
  CONSTRAINT aduser_bbuyerfunds FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE bbuyerf ADD
  CONSTRAINT bbuyer_bbuyerfunds FOREIGN KEY (ad_user_id)
      REFERENCES b_buyer (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE bbuyerf ADD
  CONSTRAINT corder_bbuyersfunds FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE bbuyerf ADD
  CONSTRAINT cpayment_bbuyerfunds FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : b_offer : b_offer
--

ALTER TABLE b_offer ADD
  CONSTRAINT aduser_boffer FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE b_offer ADD
  CONSTRAINT bseller_boffer FOREIGN KEY (ad_user_id)
      REFERENCES b_seller (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE b_offer ADD
  CONSTRAINT bsellerfunds_boffer FOREIGN KEY (b_sellerfunds_id)
      REFERENCES bsellf (b_sellerfunds_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE b_offer ADD
  CONSTRAINT btopic_boffer FOREIGN KEY (b_topic_id)
      REFERENCES b_topic (b_topic_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : b_seller : b_seller
--

ALTER TABLE b_seller ADD
  CONSTRAINT aduser_bseller FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : b_sellerfunds : bsellf
--

ALTER TABLE bsellf ADD
  CONSTRAINT aduser_bsellerfunds FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE bsellf ADD
  CONSTRAINT bseller_bsellerfunds FOREIGN KEY (ad_user_id)
      REFERENCES b_seller (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE bsellf ADD
  CONSTRAINT corder_bsellerfunds FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE bsellf ADD
  CONSTRAINT cpayment_bsellerfunds FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : b_topic : b_topic
--

ALTER TABLE b_topic ADD
  CONSTRAINT btopiccategory_btopic FOREIGN KEY (b_topiccategory_id)
      REFERENCES btopcat (b_topiccategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE b_topic ADD
  CONSTRAINT btopictype_btopic FOREIGN KEY (b_topictype_id)
      REFERENCES btoptyp (b_topictype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : b_topiccategory : btopcat
--

ALTER TABLE btopcat ADD
  CONSTRAINT btopictype_btopiccategory FOREIGN KEY (b_topictype_id)
      REFERENCES btoptyp (b_topictype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : b_topictype : btoptyp
--

ALTER TABLE btoptyp ADD
  CONSTRAINT mpricelist_btopictype FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE btoptyp ADD
  CONSTRAINT mproduct_btopictype FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE btoptyp ADD
  CONSTRAINT mproduct_btopictypemember FOREIGN KEY (m_productmember_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_acctprocessor : caccp
--

ALTER TABLE caccp ADD
  CONSTRAINT adtable_cacctprocessor FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccp ADD
  CONSTRAINT aduser_cacctprocessor FOREIGN KEY (supervisor_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccp ADD
  CONSTRAINT cacctschema_cacctprocessor FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.c_acctprocessor
  OWNER TO adempiere;

--
-- Table : c_acctprocessorlog : caccpl
--

ALTER TABLE caccpl ADD
  CONSTRAINT cacctprocessor_log FOREIGN KEY (c_acctprocessor_id)
      REFERENCES caccp (c_acctprocessor_id)
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.c_acctprocessorlog
  OWNER TO adempiere;

--
-- Table : c_acctschema : caccs
--

ALTER TABLE caccs ADD
  CONSTRAINT ad_client_c_acctschema FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccs ADD
  CONSTRAINT ad_org_c_acctschema FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccs ADD
  CONSTRAINT adorgonly_cacctschema FOREIGN KEY (ad_orgonly_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccs ADD
  CONSTRAINT c_currency_c_acctschema FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccs ADD
  CONSTRAINT cperiod_cacctschema FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccs ADD
  CONSTRAINT mcosttype_cacctschema FOREIGN KEY (m_costtype_id)
      REFERENCES m_costtype (m_costtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_acctschema_default : caccsdft
--

ALTER TABLE caccsdft ADD
  CONSTRAINT cacctschema_default FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE caccsdft ADD
  CONSTRAINT creceivableservices_cacctschem FOREIGN KEY (c_receivable_services_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT paveragecostvariance_cacctsche FOREIGN KEY (p_averagecostvariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT pburden_cacctschemadefault FOREIGN KEY (p_burden_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT pcostadjustment_cacctschemadef FOREIGN KEY (p_costadjustment_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT pcostofproduction_cacctschemad FOREIGN KEY (p_costofproduction_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT pfloorstock_cacctschemadefault FOREIGN KEY (p_floorstock_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT pinventoryclearing_cacctschema FOREIGN KEY (p_inventoryclearing_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT plabor_cacctschemadefault FOREIGN KEY (p_labor_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT pmethodchangevariance_cacctsch FOREIGN KEY (p_methodchangevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT pmixvariance_cacctschemadefaul FOREIGN KEY (p_mixvariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT poutsideprocessing_cacctschema FOREIGN KEY (p_outsideprocessing_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT poverhead_cacctschemadefault FOREIGN KEY (p_overhead_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT pratevariance_cacctschemadefau FOREIGN KEY (p_ratevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT pscrap_cacctschemadefault FOREIGN KEY (p_scrap_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT pusagevariance_cacctschemadefa FOREIGN KEY (p_usagevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT pwip_cacctschemadefault FOREIGN KEY (p_wip_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_basset_cschemadefault FOREIGN KEY (b_asset_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_bexpense_cschemadefault FOREIGN KEY (b_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_binterestexp_cschemadefault FOREIGN KEY (b_interestexp_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_binterestrev_cschemadefault FOREIGN KEY (b_interestrev_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_bintransit_cschemadefault FOREIGN KEY (b_intransit_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_bpaymentselect_cschemadefau FOREIGN KEY (b_paymentselect_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_brevaluationgain_cschemadef FOREIGN KEY (b_revaluationgain_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_brevaluationloss_cschemadef FOREIGN KEY (b_revaluationloss_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_bsettlementgain_cschemadefa FOREIGN KEY (b_settlementgain_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_bsettlementloss_cschemadefa FOREIGN KEY (b_settlementloss_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_bunallocatedcash_cschemadef FOREIGN KEY (b_unallocatedcash_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_bunidentified_cschemadefaul FOREIGN KEY (b_unidentified_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_cbasset_cschemadefault FOREIGN KEY (cb_asset_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_cbcashtransfer_cschemadefau FOREIGN KEY (cb_cashtransfer_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_cbdifferences_cschemadefaul FOREIGN KEY (cb_differences_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_cbexpense_cschemadefault FOREIGN KEY (cb_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_cbreceipt_cschemadefault FOREIGN KEY (cb_receipt_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_chexpense_cschemadefault FOREIGN KEY (ch_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_chrevenue_cschemadefault FOREIGN KEY (ch_revenue_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_cprepayment_cschemadefault FOREIGN KEY (c_prepayment_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_creceivable_cschemadefault FOREIGN KEY (c_receivable_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_eexpense_cschemadefault FOREIGN KEY (e_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_eprepayment_cschemadefault FOREIGN KEY (e_prepayment_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_notinvoicedrec_cschemadefau FOREIGN KEY (notinvoicedreceivables_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_notinvoicedreceipts_cschema FOREIGN KEY (notinvoicedreceipts_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_notinvoicedrevenue_cschemad FOREIGN KEY (notinvoicedrevenue_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_passet_cschemadefault FOREIGN KEY (p_asset_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_paydiscountexp_cschemadefau FOREIGN KEY (paydiscount_exp_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_paydiscountrev_cschemadefau FOREIGN KEY (paydiscount_rev_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_pcogs_cschemadefault FOREIGN KEY (p_cogs_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_pexpense_cschemadefault FOREIGN KEY (p_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_pinvoicepv_cschemadefault FOREIGN KEY (p_invoicepricevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_pjasset_cschemadefault FOREIGN KEY (pj_asset_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_pjwip_cschemadefault FOREIGN KEY (pj_wip_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_ppurchasepv_cschemadefault FOREIGN KEY (p_purchasepricevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_prevenue_cschemadefault FOREIGN KEY (p_revenue_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_ptdiscountgrant_cschemadefa FOREIGN KEY (p_tradediscountgrant_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_ptdiscountrec_cschemadefaul FOREIGN KEY (p_tradediscountrec_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_realizedgain_cschemadefault FOREIGN KEY (realizedgain_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_realizedloss_cschemadefault FOREIGN KEY (realizedloss_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_tcredit_cschemadefault FOREIGN KEY (t_credit_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_tdue_cschemadefault FOREIGN KEY (t_due_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_texpense_cschemadefault FOREIGN KEY (t_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_tliability_cschemadefault FOREIGN KEY (t_liability_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_trec_cschemadefault FOREIGN KEY (t_receivables_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_unearnedrevenue_cschemadefa FOREIGN KEY (unearnedrevenue_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_unrealizedgain_cschemadefau FOREIGN KEY (unrealizedgain_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_unrealizedloss_cschemadefau FOREIGN KEY (unrealizedloss_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_vliability_cschemadefault FOREIGN KEY (v_liability_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_vliabilityservices_cschemad FOREIGN KEY (v_liability_services_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_vprepayment_cschemadefault FOREIGN KEY (v_prepayment_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_wdifferences_cschemadefault FOREIGN KEY (w_differences_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_winvactualadjust_cschemadef FOREIGN KEY (w_invactualadjust_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_winventory_cschemadefault FOREIGN KEY (w_inventory_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_withholding_cschemadefault FOREIGN KEY (withholding_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_wrevaluation_cschemadefault FOREIGN KEY (w_revaluation_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsdft ADD
  CONSTRAINT vc_writeoff_cschemadefault FOREIGN KEY (writeoff_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_acctschema_element : caccse
--

ALTER TABLE caccse ADD
  CONSTRAINT adclient_caschemaelement FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccse ADD
  CONSTRAINT adcolumn_cacctschemaelement FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccse ADD
  CONSTRAINT adorg_caschemaelement FOREIGN KEY (org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccse ADD
  CONSTRAINT adorgid_c_aschemaelement FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccse ADD
  CONSTRAINT cacctschema_caschemaelement FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE caccse ADD
  CONSTRAINT cactivity_cacctschemaelement FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccse ADD
  CONSTRAINT cbuspartner_caschemaelement FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccse ADD
  CONSTRAINT celement_caschemaelement FOREIGN KEY (c_element_id)
      REFERENCES c_element (c_element_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccse ADD
  CONSTRAINT celementvalue_caschemaelement FOREIGN KEY (c_elementvalue_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccse ADD
  CONSTRAINT clocation_caschemaelement FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccse ADD
  CONSTRAINT cproject_caschemaelement FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccse ADD
  CONSTRAINT csalesregion_caschemaelement FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccse ADD
  CONSTRAINT mproduct_caschemaelement FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccse ADD
  CONSTRAINT socampaign_caschemaelement FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_acctschema_gl : caccsgl
--

ALTER TABLE caccsgl ADD
  CONSTRAINT cacctschema_cacctschemagl FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE caccsgl ADD
  CONSTRAINT commitmentoffset_cacctschemagl FOREIGN KEY (commitmentoffset_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsgl ADD
  CONSTRAINT commitmentoffsetsales_cacctsch FOREIGN KEY (commitmentoffsetsales_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsgl ADD
  CONSTRAINT vc_currencybalancing_cschemagl FOREIGN KEY (currencybalancing_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsgl ADD
  CONSTRAINT vc_incomesummary_cschemagl FOREIGN KEY (incomesummary_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsgl ADD
  CONSTRAINT vc_intercompanyduefrom_cschema FOREIGN KEY (intercompanyduefrom_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsgl ADD
  CONSTRAINT vc_intercompanydueto_cschemagl FOREIGN KEY (intercompanydueto_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsgl ADD
  CONSTRAINT vc_ppvoffset_cschemagl FOREIGN KEY (ppvoffset_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsgl ADD
  CONSTRAINT vc_retainedearning_cschemagl FOREIGN KEY (retainedearning_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsgl ADD
  CONSTRAINT vc_suspensebalancing_cschemagl FOREIGN KEY (suspensebalancing_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE caccsgl ADD
  CONSTRAINT vc_suspenseerror_cschemagl FOREIGN KEY (suspenseerror_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_activity : c_activity
--


--
-- Table : c_allocationhdr : calchdr
--

ALTER TABLE calchdr ADD
  CONSTRAINT ccurrency_callocation FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE calchdr ADD
  CONSTRAINT cdoctype_callocationhdr FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE calchdr ADD
  CONSTRAINT reversal_callocationhdr FOREIGN KEY (reversal_id)
      REFERENCES calchdr (c_allocationhdr_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_allocationline : calcln
--

ALTER TABLE calcln ADD
  CONSTRAINT callocation_callocationline FOREIGN KEY (c_allocationhdr_id)
      REFERENCES calchdr (c_allocationhdr_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE calcln ADD
  CONSTRAINT cbpartner_callocationline FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE calcln ADD
  CONSTRAINT ccashline_callocationline FOREIGN KEY (c_cashline_id)
      REFERENCES c_cashline (c_cashline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE calcln ADD
  CONSTRAINT ccharge_callocationline FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE calcln ADD
  CONSTRAINT cinvoice_callocationline FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE calcln ADD
  CONSTRAINT corder_callocation FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE calcln ADD
  CONSTRAINT cpayment_callocationline FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE calcln ADD
  CONSTRAINT reversalline_callocationline FOREIGN KEY (reversalline_id)
      REFERENCES calcln (c_allocationline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bank : c_bank
--

ALTER TABLE c_bank ADD
  CONSTRAINT cbpartner_cbank FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bank ADD
  CONSTRAINT clocation_cbank FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bankaccount : cbacct
--

ALTER TABLE cbacct ADD
  CONSTRAINT cbank_cbankaccount FOREIGN KEY (c_bank_id)
      REFERENCES c_bank (c_bank_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbacct ADD
  CONSTRAINT cbpartner_cbankaccount FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbacct ADD
  CONSTRAINT ccurrency_cbankaccount FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bankaccount_acct : cbaccta
--

ALTER TABLE cbaccta ADD
  CONSTRAINT cacctschema_cbankaccountacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbaccta ADD
  CONSTRAINT cbankaccount_cbankacctacct FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbaccta ADD
  CONSTRAINT vc_basset_cbankaccount FOREIGN KEY (b_asset_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbaccta ADD
  CONSTRAINT vc_bexpense_cbankaccount FOREIGN KEY (b_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbaccta ADD
  CONSTRAINT vc_binterestexp_cbankaccount FOREIGN KEY (b_interestexp_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbaccta ADD
  CONSTRAINT vc_binterestrev_cbankaccount FOREIGN KEY (b_interestrev_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbaccta ADD
  CONSTRAINT vc_bintransit_cbankaccount FOREIGN KEY (b_intransit_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbaccta ADD
  CONSTRAINT vc_bpaymentselect_cbankaccount FOREIGN KEY (b_paymentselect_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbaccta ADD
  CONSTRAINT vc_brevaluationgain_cbankaccou FOREIGN KEY (b_revaluationgain_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbaccta ADD
  CONSTRAINT vc_brevaluationloss_cbankaccou FOREIGN KEY (b_revaluationloss_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbaccta ADD
  CONSTRAINT vc_bsettlementgain_cbankaccoun FOREIGN KEY (b_settlementgain_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbaccta ADD
  CONSTRAINT vc_bsettlementloss_cbankaccoun FOREIGN KEY (b_settlementloss_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbaccta ADD
  CONSTRAINT vc_bunallocatedcash_cbankaccou FOREIGN KEY (b_unallocatedcash_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbaccta ADD
  CONSTRAINT vc_bunidentified_cbankaccount FOREIGN KEY (b_unidentified_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bankaccountdoc : cbnkadoc
--

ALTER TABLE cbnkadoc ADD
  CONSTRAINT adprintformat_cbankaccountdoc FOREIGN KEY (check_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbnkadoc ADD
  CONSTRAINT cbankaccount_cbadoc FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_bankmatcher : cbnkmtc
--

ALTER TABLE cbnkmtc ADD
  CONSTRAINT cbank_cbankmatcher FOREIGN KEY (c_bank_id)
      REFERENCES c_bank (c_bank_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbnkmtc ADD
  CONSTRAINT cbankstatementmatcher_cbankmat FOREIGN KEY (c_bankstatementmatcher_id)
      REFERENCES cbstmtmch (c_bankstatementmatcher_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bankstatement : cbstmt
--

ALTER TABLE cbstmt ADD
  CONSTRAINT cbankaccount_cbankstatement FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbstmt ADD
  CONSTRAINT cdoctype_cbankstatement FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bankstatementline : cbstmtln
--

ALTER TABLE cbstmtln ADD
  CONSTRAINT cbpartner_cbankstatementline FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbstmtln ADD
  CONSTRAINT cbstatement_cbstatementline FOREIGN KEY (c_bankstatement_id)
      REFERENCES cbstmt (c_bankstatement_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbstmtln ADD
  CONSTRAINT ccharge_cbankstmtlime FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbstmtln ADD
  CONSTRAINT ccurrency_cbankstmtline FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbstmtln ADD
  CONSTRAINT cinvoice_cbankstatementline FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbstmtln ADD
  CONSTRAINT cpayment_cbankstmtline FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bankstatementloader : cbstmtldr
--

ALTER TABLE cbstmtldr ADD
  CONSTRAINT cbankacct_cbankstmtloader FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bankstatementmatcher : cbstmtmch
--


--
-- Table : c_bp_bankaccount : cbpbacct
--

ALTER TABLE cbpbacct ADD
  CONSTRAINT aduser_cbpbankaccount FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpbacct ADD
  CONSTRAINT cbank_cbpbankaccount FOREIGN KEY (c_bank_id)
      REFERENCES c_bank (c_bank_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE cbpbacct ADD
  CONSTRAINT cbpartner_cbpbankaccount FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_bp_customer_acct : cbpcacct
--

ALTER TABLE cbpcacct ADD
  CONSTRAINT cacctschema_cbpcustomeracct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbpcacct ADD
  CONSTRAINT cbuspartner_cbpcustomer_acct FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbpcacct ADD
  CONSTRAINT creceivableservices_cbpcustome FOREIGN KEY (c_receivable_services_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpcacct ADD
  CONSTRAINT vc_cprepayment_cbpcustomer FOREIGN KEY (c_prepayment_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpcacct ADD
  CONSTRAINT vc_creceivable_cbpcustomer FOREIGN KEY (c_receivable_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bp_edi : c_bp_edi
--

ALTER TABLE c_bp_edi ADD
  CONSTRAINT adsequence_cbpedi FOREIGN KEY (ad_sequence_id)
      REFERENCES adseq (ad_sequence_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bp_edi ADD
  CONSTRAINT c_bpartner_cbpedi FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bp_edi ADD
  CONSTRAINT mwarehouse_cbpedi FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bp_employee_acct : cbpempacct
--

ALTER TABLE cbpempacct ADD
  CONSTRAINT cacctschema_cbpemployeeacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbpempacct ADD
  CONSTRAINT cbuspartner_c_bpemployeeacct FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbpempacct ADD
  CONSTRAINT vc_eexpense_cbpemployee FOREIGN KEY (e_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpempacct ADD
  CONSTRAINT vc_eprepayment_cbpemployee FOREIGN KEY (e_prepayment_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bp_group : c_bp_group
--

ALTER TABLE c_bp_group ADD
  CONSTRAINT adprintcolor_cbpgroup FOREIGN KEY (ad_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bp_group ADD
  CONSTRAINT cdunning_cbpgroup FOREIGN KEY (c_dunning_id)
      REFERENCES c_dunning (c_dunning_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bp_group ADD
  CONSTRAINT mdiscountschema_cbpgroup FOREIGN KEY (m_discountschema_id)
      REFERENCES mdscs (m_discountschema_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE c_bp_group ADD
  CONSTRAINT mdiscountschemapo_cbpgroup FOREIGN KEY (po_discountschema_id)
      REFERENCES mdscs (m_discountschema_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE c_bp_group ADD
  CONSTRAINT mpricelist_cbpgroup FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE c_bp_group ADD
  CONSTRAINT mpricelistpo_cbpgroup FOREIGN KEY (po_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : c_bp_group_acct : cbpgrpacct
--

ALTER TABLE cbpgrpacct ADD
  CONSTRAINT cacctschema_cbpgroupacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT cbpgroup_cbpgroupacct FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT creceivableservices_cbpgroupac FOREIGN KEY (c_receivable_services_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT vc_cprepayment_cbpgroup FOREIGN KEY (c_prepayment_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT vc_creceivable_cbpgroup FOREIGN KEY (c_receivable_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT vc_notinvoicedrec_cbpgroup FOREIGN KEY (notinvoicedreceivables_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT vc_notinvoicedreceipts_cbpgrou FOREIGN KEY (notinvoicedreceipts_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT vc_notinvoicedrevenue_cbpgroup FOREIGN KEY (notinvoicedrevenue_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT vc_paydiscountexp_cbpgroup FOREIGN KEY (paydiscount_exp_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT vc_paydiscountrev_cbpgroup FOREIGN KEY (paydiscount_rev_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT vc_unearnedrevenue_cbpgroup FOREIGN KEY (unearnedrevenue_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT vc_vliability_cbpgroup FOREIGN KEY (v_liability_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT vc_vliabilityservices_cbpgroup FOREIGN KEY (v_liability_services_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT vc_vprepayment_cbpgroup FOREIGN KEY (v_prepayment_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpgrpacct ADD
  CONSTRAINT vc_writeoff_cbpgroup FOREIGN KEY (writeoff_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bp_relation : cbprel
--

ALTER TABLE cbprel ADD
  CONSTRAINT cbpartner_cbprelation FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbprel ADD
  CONSTRAINT cbpartner_cbprelationbp FOREIGN KEY (c_bpartnerrelation_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbprel ADD
  CONSTRAINT cbplocation_cbprelation FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbprel ADD
  CONSTRAINT cbplocation_cbprelationbp FOREIGN KEY (c_bpartnerrelation_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.c_bp_relation
  OWNER TO adempiere;

--
-- Table : c_bp_vendor_acct : cbpvndacct
--

ALTER TABLE cbpvndacct ADD
  CONSTRAINT c_buspartner_c_bp_vendor_acct FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbpvndacct ADD
  CONSTRAINT cacctschema_cbpvendoracct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbpvndacct ADD
  CONSTRAINT vc_vliability_cbpvendor FOREIGN KEY (v_liability_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpvndacct ADD
  CONSTRAINT vc_vliabilityservices_cbpvendo FOREIGN KEY (v_liability_services_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbpvndacct ADD
  CONSTRAINT vc_vprepayment_cbpvendor FOREIGN KEY (v_prepayment_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bp_withholding : cbpwh
--

ALTER TABLE cbpwh ADD
  CONSTRAINT cbpartner_cbpwithholding FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbpwh ADD
  CONSTRAINT cwithholding_cbpwithholding FOREIGN KEY (c_withholding_id)
      REFERENCES cwh (c_withholding_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bpartner : c_bpartner
--

ALTER TABLE c_bpartner ADD
  CONSTRAINT ad_language_c_buspartner FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT adclient_cbpartner FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT adorg_cbpartner FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT adorg_cbpartnerorg FOREIGN KEY (ad_orgbp_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT adprintformatinv_cbpartner FOREIGN KEY (invoice_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT adusersalesrep_cbpartner FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT cbpartner_cpbartnerparent FOREIGN KEY (bpartner_parent_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT cbpgroup_cbpartner FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT cdunning_cbpartner FOREIGN KEY (c_dunning_id)
      REFERENCES c_dunning (c_dunning_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT cgreeting_cbpartner FOREIGN KEY (c_greeting_id)
      REFERENCES c_greeting (c_greeting_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT cinvoiceschedule_cbpartner FOREIGN KEY (c_invoiceschedule_id)
      REFERENCES cinvsch (c_invoiceschedule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT cpaymentterm_cbpartner FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT cpopaymentterm_cbpartner FOREIGN KEY (po_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT ctaxgroup_cbpartner FOREIGN KEY (c_taxgroup_id)
      REFERENCES c_taxgroup (c_taxgroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT logo_cbpartner FOREIGN KEY (logo_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT mdiscounts_cbpartner FOREIGN KEY (m_discountschema_id)
      REFERENCES mdscs (m_discountschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT mdiscountspo_cbpartner FOREIGN KEY (po_discountschema_id)
      REFERENCES mdscs (m_discountschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT mpricelist_cbpartner FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE c_bpartner ADD
  CONSTRAINT mpricelistpo_cbuspartner FOREIGN KEY (po_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : c_bpartner_location : cbploc
--

ALTER TABLE cbploc ADD
  CONSTRAINT c_buspartner_locationclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbploc ADD
  CONSTRAINT c_buspartner_locationorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbploc ADD
  CONSTRAINT cbpartner_cbplocation FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbploc ADD
  CONSTRAINT clocation_cbplocation FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cbploc ADD
  CONSTRAINT csalesregion_bpartnerlocation FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE cbploc ADD
  CONSTRAINT hrrelationship_cbpartnerlocati FOREIGN KEY (hr_relationship_id)
      REFERENCES hrrel (hr_relationship_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_bpartner_product : cbpprd
--

ALTER TABLE cbpprd ADD
  CONSTRAINT cbpartner_cbpproduct FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cbpprd ADD
  CONSTRAINT mproduct_cbpproduct FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_calendar : c_calendar
--

ALTER TABLE c_calendar ADD
  CONSTRAINT c_calendarclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_calendar ADD
  CONSTRAINT c_calendarorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_campaign : c_campaign
--

ALTER TABLE c_campaign ADD
  CONSTRAINT cchannel_ccampaign FOREIGN KEY (c_channel_id)
      REFERENCES c_channel (c_channel_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_cash : c_cash
--

ALTER TABLE c_cash ADD
  CONSTRAINT adorg_ccash FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cash ADD
  CONSTRAINT adorgtrx_ccash FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cash ADD
  CONSTRAINT cactivity_ccash FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cash ADD
  CONSTRAINT ccampaign_ccash FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cash ADD
  CONSTRAINT ccashbook_ccash FOREIGN KEY (c_cashbook_id)
      REFERENCES c_cashbook (c_cashbook_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cash ADD
  CONSTRAINT celementvalueuser1_ccash FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cash ADD
  CONSTRAINT celementvalueuser2_ccash FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cash ADD
  CONSTRAINT cproject_ccash FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cash ADD
  CONSTRAINT user3_ccash FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cash ADD
  CONSTRAINT user4_ccash FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_cashbook : c_cashbook
--

ALTER TABLE c_cashbook ADD
  CONSTRAINT ccurrency_ccashbook FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_cashbook_acct : ccbkacct
--

ALTER TABLE ccbkacct ADD
  CONSTRAINT cacctschema_ccashbookacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ccbkacct ADD
  CONSTRAINT ccashbook_ccashbookacct FOREIGN KEY (c_cashbook_id)
      REFERENCES c_cashbook (c_cashbook_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ccbkacct ADD
  CONSTRAINT vc_cbasset_ccashbook FOREIGN KEY (cb_asset_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccbkacct ADD
  CONSTRAINT vc_cbcashtransfer_ccashbook FOREIGN KEY (cb_cashtransfer_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccbkacct ADD
  CONSTRAINT vc_cbdifferences_ccashbook FOREIGN KEY (cb_differences_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccbkacct ADD
  CONSTRAINT vc_cbexpense_ccashbook FOREIGN KEY (cb_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccbkacct ADD
  CONSTRAINT vc_cbreceipt_ccashbook FOREIGN KEY (cb_receipt_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_cashflow : c_cashflow
--

ALTER TABLE c_cashflow ADD
  CONSTRAINT adorgtrx_ccashflow FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cashflow ADD
  CONSTRAINT cbankaccount_ccashflow FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cashflow ADD
  CONSTRAINT cbpartner_ccashflow FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cashflow ADD
  CONSTRAINT cconversiontype_ccashflow FOREIGN KEY (c_conversiontype_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cashflow ADD
  CONSTRAINT ccurrency_ccashflow FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cashflow ADD
  CONSTRAINT cpaymentterm_ccashflow FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_cashline : c_cashline
--

ALTER TABLE c_cashline ADD
  CONSTRAINT cbankacct_ccashline FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cashline ADD
  CONSTRAINT ccash_ccashline FOREIGN KEY (c_cash_id)
      REFERENCES c_cash (c_cash_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE c_cashline ADD
  CONSTRAINT ccharge_ccashline FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cashline ADD
  CONSTRAINT ccurrency_ccashline FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cashline ADD
  CONSTRAINT cinvoice_ccashline FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_cashline ADD
  CONSTRAINT cpayment_ccashline FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_channel : c_channel
--

ALTER TABLE c_channel ADD
  CONSTRAINT adprintcolor_cchannel FOREIGN KEY (ad_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_charge : c_charge
--

ALTER TABLE c_charge ADD
  CONSTRAINT cbpartner_ccharge FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_charge ADD
  CONSTRAINT cchargetype_ccharge FOREIGN KEY (c_chargetype_id)
      REFERENCES cchrgtyp (c_chargetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_charge ADD
  CONSTRAINT ctaxcategory_ccharge FOREIGN KEY (c_taxcategory_id)
      REFERENCES ctaxcat (c_taxcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_charge ADD
  CONSTRAINT ctaxtype_ccharge FOREIGN KEY (c_taxtype_id)
      REFERENCES c_taxtype (c_taxtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_charge_acct : cchrgacct
--

ALTER TABLE cchrgacct ADD
  CONSTRAINT cacctschema_cchargeacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cchrgacct ADD
  CONSTRAINT cchrage_cchargeacct FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cchrgacct ADD
  CONSTRAINT vc_chexpense_ccharge FOREIGN KEY (ch_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cchrgacct ADD
  CONSTRAINT vc_chrevenue_ccharge FOREIGN KEY (ch_revenue_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_charge_trl : cchrgt
--

ALTER TABLE cchrgt ADD
  CONSTRAINT adlangu_cchargetrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cchrgt ADD
  CONSTRAINT ccharge_cchargetrl FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_chargetype : cchrgtyp
--


--
-- Table : c_chargetype_doctype : cchrgtdt
--

ALTER TABLE cchrgtdt ADD
  CONSTRAINT cchargetype_cchargetypedoctype FOREIGN KEY (c_chargetype_id)
      REFERENCES cchrgtyp (c_chargetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cchrgtdt ADD
  CONSTRAINT cdoctype_cchargetypedoctype FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_city : c_city
--

ALTER TABLE c_city ADD
  CONSTRAINT c_cityclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_city ADD
  CONSTRAINT c_cityorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_city ADD
  CONSTRAINT ccountry_ccity FOREIGN KEY (c_country_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_city ADD
  CONSTRAINT cregion_ccity FOREIGN KEY (c_region_id)
      REFERENCES c_region (c_region_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_commission : ccom
--

ALTER TABLE ccom ADD
  CONSTRAINT cbpartner_ccommission FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccom ADD
  CONSTRAINT ccharge_ccommission FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccom ADD
  CONSTRAINT ccommissiongroup_ccommission FOREIGN KEY (c_commissiongroup_id)
      REFERENCES ccomgrp (c_commissiongroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccom ADD
  CONSTRAINT ccurrency_ccommission FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_commissionamt : ccomamt
--

ALTER TABLE ccomamt ADD
  CONSTRAINT cbpartner_ccommissionamt FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomamt ADD
  CONSTRAINT ccomline_ccomamt FOREIGN KEY (c_commissionline_id)
      REFERENCES ccomln (c_commissionline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomamt ADD
  CONSTRAINT ccommentrun_ccommissionamt FOREIGN KEY (c_commissionrun_id)
      REFERENCES ccomr (c_commissionrun_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_commissiondetail : ccomdet
--

ALTER TABLE ccomdet ADD
  CONSTRAINT ccommissionamt_ccomdetail FOREIGN KEY (c_commissionamt_id)
      REFERENCES ccomamt (c_commissionamt_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ccomdet ADD
  CONSTRAINT ccurrency_ccommissiondetail FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomdet ADD
  CONSTRAINT cinvoiceline_ccommissiondet FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomdet ADD
  CONSTRAINT corderline_ccommissiondetail FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_commissiongroup : ccomgrp
--


--
-- Table : c_commissionline : ccomln
--

ALTER TABLE ccomln ADD
  CONSTRAINT adorgtrx_ccommissionline FOREIGN KEY (org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomln ADD
  CONSTRAINT cbpartner_ccommissionline FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomln ADD
  CONSTRAINT cbpgroup_commissionline FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomln ADD
  CONSTRAINT ccampaign_ccommissionline FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomln ADD
  CONSTRAINT cchannel_ccommissionline FOREIGN KEY (c_channel_id)
      REFERENCES c_channel (c_channel_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomln ADD
  CONSTRAINT ccommission_ccommissionline FOREIGN KEY (c_commission_id)
      REFERENCES ccom (c_commission_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ccomln ADD
  CONSTRAINT cdunninglevel_ccommissionline FOREIGN KEY (c_dunninglevel_id)
      REFERENCES cdunlvl (c_dunninglevel_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomln ADD
  CONSTRAINT cpaymentterm_ccommissionline FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomln ADD
  CONSTRAINT cproject_ccommissionline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomln ADD
  CONSTRAINT csalesregion_ccommissionline FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomln ADD
  CONSTRAINT mproduct_ccommissionline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomln ADD
  CONSTRAINT mproductcat_ccommissionline FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomln ADD
  CONSTRAINT mproductclass_ccommissionline FOREIGN KEY (m_product_class_id)
      REFERENCES mprdcls (m_product_class_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomln ADD
  CONSTRAINT mproductclassification_ccommis FOREIGN KEY (m_product_classification_id)
      REFERENCES mprdclsn (m_product_classification_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomln ADD
  CONSTRAINT mproductgroup_ccommissionline FOREIGN KEY (m_product_group_id)
      REFERENCES mprdgrp (m_product_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_commissionrun : ccomr
--

ALTER TABLE ccomr ADD
  CONSTRAINT ccommission_ccommissionrun FOREIGN KEY (c_commission_id)
      REFERENCES ccom (c_commission_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomr ADD
  CONSTRAINT ccommissiongroup_ccommissionru FOREIGN KEY (c_commissiongroup_id)
      REFERENCES ccomgrp (c_commissiongroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomr ADD
  CONSTRAINT cdoctype_ccommissionrun FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_commissionsalesrep : ccomslsr
--

ALTER TABLE ccomslsr ADD
  CONSTRAINT cbpartner_ccommissionsalesrep FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccomslsr ADD
  CONSTRAINT ccommission_ccommissionsalesre FOREIGN KEY (c_commission_id)
      REFERENCES ccom (c_commission_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_contactactivity : ccntact
--

ALTER TABLE ccntact ADD
  CONSTRAINT aduser_ccontactactivity FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccntact ADD
  CONSTRAINT copportunity_ccontactactivity FOREIGN KEY (c_opportunity_id)
      REFERENCES coptn (c_opportunity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccntact ADD
  CONSTRAINT salesrep_ccontactactivity FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_conversion_rate : ccvnr
--

ALTER TABLE ccvnr ADD
  CONSTRAINT c_conversion_rateclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccvnr ADD
  CONSTRAINT c_conversion_rateorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccvnr ADD
  CONSTRAINT c_currencyconvrateto FOREIGN KEY (c_currency_id_to)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccvnr ADD
  CONSTRAINT cconversiontype_cconvrate FOREIGN KEY (c_conversiontype_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccvnr ADD
  CONSTRAINT ccurrency_cconversionrate FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_conversiontype : ccvntyp
--


--
-- Table : c_country : c_country
--

ALTER TABLE c_country ADD
  CONSTRAINT adlanguage_ccountry FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_country ADD
  CONSTRAINT c_countryclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_country ADD
  CONSTRAINT c_countryorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_country ADD
  CONSTRAINT ccountry_ccountry FOREIGN KEY (c_country_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_country ADD
  CONSTRAINT ccurrency_ccountry FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_country_trl : ccntryt
--

ALTER TABLE ccntryt ADD
  CONSTRAINT adlanguage_ccountrytrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ccntryt ADD
  CONSTRAINT ccountry_ccountrytrl FOREIGN KEY (c_country_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_currency : c_currency
--

ALTER TABLE c_currency ADD
  CONSTRAINT c_currencyclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_currency ADD
  CONSTRAINT c_currencyorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_currency_acct : ccurracct
--

ALTER TABLE ccurracct ADD
  CONSTRAINT cacctschema_ccurrencyacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ccurracct ADD
  CONSTRAINT ccurrency_ccurrencyacct FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ccurracct ADD
  CONSTRAINT vc_realizedgain_ccurrency FOREIGN KEY (realizedgain_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccurracct ADD
  CONSTRAINT vc_realizedloss_ccurrency FOREIGN KEY (realizedloss_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccurracct ADD
  CONSTRAINT vc_unrealizedgain_ccurrency FOREIGN KEY (unrealizedgain_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ccurracct ADD
  CONSTRAINT vc_unrealizedloss_ccurrency FOREIGN KEY (unrealizedloss_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_currency_trl : ccurrt
--

ALTER TABLE ccurrt ADD
  CONSTRAINT adlanguage_ccurrencytrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ccurrt ADD
  CONSTRAINT ccurrency_ccurrencytrl FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_cycle : c_cycle
--

ALTER TABLE c_cycle ADD
  CONSTRAINT ccurrency_ccycle FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_cyclephase : ccyclp
--

ALTER TABLE ccyclp ADD
  CONSTRAINT ccyclestep_ccyclephase FOREIGN KEY (c_cyclestep_id)
      REFERENCES ccycls (c_cyclestep_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ccyclp ADD
  CONSTRAINT cphase_ccyclephase FOREIGN KEY (c_phase_id)
      REFERENCES c_phase (c_phase_id)
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.c_cyclephase
  OWNER TO adempiere;

--
-- Table : c_cyclestep : ccycls
--

ALTER TABLE ccycls ADD
  CONSTRAINT ccycle_ccyclestep FOREIGN KEY (c_cycle_id)
      REFERENCES c_cycle (c_cycle_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_doctype : c_doctype
--

ALTER TABLE c_doctype ADD
  CONSTRAINT ad_sequence_doctypedoc FOREIGN KEY (docnosequence_id)
      REFERENCES adseq (ad_sequence_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_doctype ADD
  CONSTRAINT adprintformat_cdoctype FOREIGN KEY (ad_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_doctype ADD
  CONSTRAINT cdoctype_invoice FOREIGN KEY (c_doctypeinvoice_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_doctype ADD
  CONSTRAINT cdoctype_proforma FOREIGN KEY (c_doctypeproforma_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_doctype ADD
  CONSTRAINT cdoctype_shipment FOREIGN KEY (c_doctypeshipment_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_doctype ADD
  CONSTRAINT cdoctypedifference_cdoctype FOREIGN KEY (c_doctypedifference_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_doctype ADD
  CONSTRAINT cdoctypepayment_cdoctype FOREIGN KEY (c_doctypepayment_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_doctype ADD
  CONSTRAINT definitesequence_cdoctype FOREIGN KEY (definitesequence_id)
      REFERENCES adseq (ad_sequence_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_doctype ADD
  CONSTRAINT glcategory_cdoctype FOREIGN KEY (gl_category_id)
      REFERENCES glcat (gl_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_doctype_trl : cdtypt
--

ALTER TABLE cdtypt ADD
  CONSTRAINT adlanguage_cdoctypetrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cdtypt ADD
  CONSTRAINT cdoctype_cdoctypetrl FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_doctypecounter : cdtypctr
--

ALTER TABLE cdtypctr ADD
  CONSTRAINT cdoctype_cdoctypecounter FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cdtypctr ADD
  CONSTRAINT cdoctypecount_cdoctypecount FOREIGN KEY (counter_c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_dunning : c_dunning
--


--
-- Table : c_dunninglevel : cdunlvl
--

ALTER TABLE cdunlvl ADD
  CONSTRAINT adprintformat_cdunninglevel FOREIGN KEY (dunning_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cdunlvl ADD
  CONSTRAINT cdunning_cdunninglevel FOREIGN KEY (c_dunning_id)
      REFERENCES c_dunning (c_dunning_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cdunlvl ADD
  CONSTRAINT cpaymentterm_cdunninglevel FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_dunninglevel_trl : cdunlvlt
--

ALTER TABLE cdunlvlt ADD
  CONSTRAINT adlanguage_cdunninglevel FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cdunlvlt ADD
  CONSTRAINT cdunninglevel_cdltrl FOREIGN KEY (c_dunninglevel_id)
      REFERENCES cdunlvl (c_dunninglevel_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_dunningrun : cdunr
--

ALTER TABLE cdunr ADD
  CONSTRAINT cdunning_cdunningrun FOREIGN KEY (c_dunning_id)
      REFERENCES c_dunning (c_dunning_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cdunr ADD
  CONSTRAINT cdunninglevel_cdunningrun FOREIGN KEY (c_dunninglevel_id)
      REFERENCES cdunlvl (c_dunninglevel_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_dunningrunentry : cdunrent
--

ALTER TABLE cdunrent ADD
  CONSTRAINT aduser_cdunningrunentry FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cdunrent ADD
  CONSTRAINT cbpartner_cdunningrunentry FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cdunrent ADD
  CONSTRAINT cbpartnerlocation_cdunningrune FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cdunrent ADD
  CONSTRAINT ccurrency_cdunningrunentry FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cdunrent ADD
  CONSTRAINT cdunninglevel_cdunningrunentry FOREIGN KEY (c_dunninglevel_id)
      REFERENCES cdunlvl (c_dunninglevel_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cdunrent ADD
  CONSTRAINT cdunningrun_cdunningrunentry FOREIGN KEY (c_dunningrun_id)
      REFERENCES cdunr (c_dunningrun_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cdunrent ADD
  CONSTRAINT salesrep_cdunningrunentry FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_dunningrunline : cdunrln
--

ALTER TABLE cdunrln ADD
  CONSTRAINT cdunningrunentry_line FOREIGN KEY (c_dunningrunentry_id)
      REFERENCES cdunrent (c_dunningrunentry_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cdunrln ADD
  CONSTRAINT cinvoice_cdunningrunline FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE cdunrln ADD
  CONSTRAINT cinvoicepayschedule_cdunningru FOREIGN KEY (c_invoicepayschedule_id)
      REFERENCES cinvps (c_invoicepayschedule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cdunrln ADD
  CONSTRAINT corder_cdunningrunline FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cdunrln ADD
  CONSTRAINT cpayment_cdunningrunline FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : c_element : c_element
--

ALTER TABLE c_element ADD
  CONSTRAINT adclient_celement FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_element ADD
  CONSTRAINT adtree_celement FOREIGN KEY (ad_tree_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE c_element ADD
  CONSTRAINT c_elementorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_elementvalue : celmval
--

ALTER TABLE celmval ADD
  CONSTRAINT adclient_celementvalue FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE celmval ADD
  CONSTRAINT adorg_celementvalue FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE celmval ADD
  CONSTRAINT cbankaccount_celementvalue FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE celmval ADD
  CONSTRAINT ccurrency_celementvalue FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE celmval ADD
  CONSTRAINT celement_celementvalue FOREIGN KEY (c_element_id)
      REFERENCES c_element (c_element_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_elementvalue_trl : celmvalt
--

ALTER TABLE celmvalt ADD
  CONSTRAINT adlanguage_celementvaluetrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE celmvalt ADD
  CONSTRAINT celementvalue_cevaluetrl FOREIGN KEY (c_elementvalue_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_greeting : c_greeting
--


--
-- Table : c_greeting_trl : cgtgt
--

ALTER TABLE cgtgt ADD
  CONSTRAINT adlanguage_cgreetingtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cgtgt ADD
  CONSTRAINT cgreeting_cgreetingtrl FOREIGN KEY (c_greeting_id)
      REFERENCES c_greeting (c_greeting_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_interorg_acct : cioacct
--

ALTER TABLE cioacct ADD
  CONSTRAINT adorg_cinterorgacct FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cioacct ADD
  CONSTRAINT adorgto_cinterorgacct FOREIGN KEY (ad_orgto_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cioacct ADD
  CONSTRAINT cacctschema_cinterorgacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cioacct ADD
  CONSTRAINT vc_intercompanyduefrom_cintero FOREIGN KEY (intercompanyduefrom_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cioacct ADD
  CONSTRAINT vc_intercompanydueto_cinterorg FOREIGN KEY (intercompanydueto_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_invoice : c_invoice
--

ALTER TABLE c_invoice ADD
  CONSTRAINT adorg_cinvoice FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT adorgtrx_cinvoice FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT aduser_cinvoice FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT aduser_sr_cinvoice FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT c_bplocation_cinvoice FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT cactivity_cinvoice FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT cbpartner_cinvoice FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT ccampaign_cinvoice FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT ccashline_cinvoice FOREIGN KEY (c_cashline_id)
      REFERENCES c_cashline (c_cashline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT ccharge_cinvoice FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT cconversiontype_cinvoice FOREIGN KEY (c_conversiontype_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT ccurrency_cinvoice FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT cdoctype_cinvoice FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT cdoctypetarget_cinvoice FOREIGN KEY (c_doctypetarget_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT cdunninglevel_cinvoice FOREIGN KEY (c_dunninglevel_id)
      REFERENCES cdunlvl (c_dunninglevel_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT celementvalueuser1_cinvoice FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT celementvalueuser2_cinvoice FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT cinvoice_ref FOREIGN KEY (ref_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT corder_cinvoice FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT cpayment_cinvoice FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT cpaymentterm_cinvoice FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT cpos_cinvoice FOREIGN KEY (c_pos_id)
      REFERENCES c_pos (c_pos_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT cproject_cinvoice FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT mpricelist_cinvoice FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT mrma_cinvoice FOREIGN KEY (m_rma_id)
      REFERENCES m_rma (m_rma_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT reversal_cinvoice FOREIGN KEY (reversal_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT user3_cinvoice FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_invoice ADD
  CONSTRAINT user4_cinvoice FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_invoicebatch : cinvbtc
--

ALTER TABLE cinvbtc ADD
  CONSTRAINT aduser_cinvoicebatch FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvbtc ADD
  CONSTRAINT cconventiontype_cinvoicebatch FOREIGN KEY (c_conversiontype_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvbtc ADD
  CONSTRAINT ccurrency_cinvoicebatch FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_invoicebatchline : cincbtcln
--

ALTER TABLE cincbtcln ADD
  CONSTRAINT adorg_cinvoicebatchline FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT adorgtrx_cinvoicebatchline FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT aduser_cinvoicebatchline FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT cactivity_cinvoicebatchline FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT cbpartner_cinvoicebatchline FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT cbplocation_cinvoicebline FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT ccharge_cinvoicebatchline FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT cdoctype_cinvoicebatchline FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT celementvalueu1_cinvoicebline FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT celementvalueu2_cinvoicebline FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT cinvoice_cinvoicebatchline FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT cinvoicebatch_cinvoicebline FOREIGN KEY (c_invoicebatch_id)
      REFERENCES cinvbtc (c_invoicebatch_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT cinvoiceline_cinvoicebline FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT cproject_cinvoicebatchline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT ctax_cinvoicebatchline FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT user3_cinvoicebatchline FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cincbtcln ADD
  CONSTRAINT user4_cinvoicebatchline FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_invoiceline : cinvln
--

ALTER TABLE cinvln ADD
  CONSTRAINT aasset_cinvoiceline FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT aassetgroup_cinvoiceline FOREIGN KEY (a_asset_group_id)
      REFERENCES aasstgrp (a_asset_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT adorg_cinvoiceline FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT adorgtrx_cinvoiceline FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT cactivity_cinvoiceline FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT ccampaign_cinvoiceline FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT ccharge_cinvoiceline FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT celemenrvalueuser1_cinvline FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT celemenrvalueuser2_cinvline FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT cinvoice_cinvoiceline FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cinvln ADD
  CONSTRAINT convoiceline_ref FOREIGN KEY (ref_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT corderline_cinvoiceline FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT cproject_cinvoiceline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT cprojectphase_cinvoiceline FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE cinvln ADD
  CONSTRAINT cprojecttask_cinvoiceline FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE cinvln ADD
  CONSTRAINT ctax_cinvoiceline FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT cuom_cinvoiceline FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT mattrsetinst_cinvoiceline FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT minoutline_cinvoiceline FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT mproduct_cinvoiceline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT mrmaline_cinvoiceline FOREIGN KEY (m_rmaline_id)
      REFERENCES m_rmaline (m_rmaline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT reversalline_cinvoiceline FOREIGN KEY (reversalline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT sresourceassign_cinvoiceline FOREIGN KEY (s_resourceassignment_id)
      REFERENCES srscea (s_resourceassignment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT user3_cinvoiceline FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cinvln ADD
  CONSTRAINT user4_cinvoiceline FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_invoicepayschedule : cinvps
--

ALTER TABLE cinvps ADD
  CONSTRAINT cinvoice_cinvoicepaysched FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cinvps ADD
  CONSTRAINT cpayschedule_cinvoicepaysched FOREIGN KEY (c_payschedule_id)
      REFERENCES cpaysched (c_payschedule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_invoiceschedule : cinvsch
--


--
-- Table : c_invoicetax : cinvtax
--

ALTER TABLE cinvtax ADD
  CONSTRAINT cinvoice_cinvoicetax FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cinvtax ADD
  CONSTRAINT ctax_cinvoicetax FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_job : c_job
--

ALTER TABLE c_job ADD
  CONSTRAINT cjobcategory_cjob FOREIGN KEY (c_jobcategory_id)
      REFERENCES cjobcat (c_jobcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_jobassignment : cjobasg
--

ALTER TABLE cjobasg ADD
  CONSTRAINT aduser_cjobassignment FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cjobasg ADD
  CONSTRAINT cjob_cjobassignment FOREIGN KEY (c_job_id)
      REFERENCES c_job (c_job_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_jobcategory : cjobcat
--


--
-- Table : c_jobremuneration : cjobrmn
--

ALTER TABLE cjobrmn ADD
  CONSTRAINT cjob_cjobremuneration FOREIGN KEY (c_job_id)
      REFERENCES c_job (c_job_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cjobrmn ADD
  CONSTRAINT cremuneration_cjobrem FOREIGN KEY (c_remuneration_id)
      REFERENCES crmnn (c_remuneration_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_landedcost : clndcst
--

ALTER TABLE clndcst ADD
  CONSTRAINT ccostelement_clandedcost FOREIGN KEY (m_costelement_id)
      REFERENCES mcstelm (m_costelement_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE clndcst ADD
  CONSTRAINT cinvoiceline_clandedcost FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE clndcst ADD
  CONSTRAINT minout_clandedcost FOREIGN KEY (m_inout_id)
      REFERENCES m_inout (m_inout_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE clndcst ADD
  CONSTRAINT minoutline_clandedcost FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE clndcst ADD
  CONSTRAINT mproduct_clandedcost FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.c_landedcost
  OWNER TO adempiere;

--
-- Table : c_landedcostallocation : clndcstalc
--

ALTER TABLE clndcstalc ADD
  CONSTRAINT cinvoiceline_clandedcostalloc FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE clndcstalc ADD
  CONSTRAINT masi_clandedcostallocation FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE clndcstalc ADD
  CONSTRAINT mcostelement_mlandedcostalloc FOREIGN KEY (m_costelement_id)
      REFERENCES mcstelm (m_costelement_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE clndcstalc ADD
  CONSTRAINT minoutline_clandedcostallocati FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE clndcstalc ADD
  CONSTRAINT mproduct_clandedcostalloc FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_landedcosttype : clcsttyp
--


--
-- Table : c_location : c_location
--

ALTER TABLE c_location ADD
  CONSTRAINT adclient_clocation FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_location ADD
  CONSTRAINT adorg_clocation FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_location ADD
  CONSTRAINT c_country_location FOREIGN KEY (c_country_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_location ADD
  CONSTRAINT c_region_location FOREIGN KEY (c_region_id)
      REFERENCES c_region (c_region_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_location ADD
  CONSTRAINT ccity_clocation FOREIGN KEY (c_city_id)
      REFERENCES c_city (c_city_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_nonbusinessday : cnbd
--

ALTER TABLE cnbd ADD
  CONSTRAINT c_calendarnonbusinessday FOREIGN KEY (c_calendar_id)
      REFERENCES c_calendar (c_calendar_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cnbd ADD
  CONSTRAINT c_nonbusinesdaysclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cnbd ADD
  CONSTRAINT c_nonbusinesdaysorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_opportunity : coptn
--

ALTER TABLE coptn ADD
  CONSTRAINT aduser_copportunity FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE coptn ADD
  CONSTRAINT cbpartner_copportunity FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE coptn ADD
  CONSTRAINT ccampaign_copportunity FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE coptn ADD
  CONSTRAINT ccurrency_copportunity FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE coptn ADD
  CONSTRAINT corder_copportunity FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE coptn ADD
  CONSTRAINT cproject_copportunity FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE coptn ADD
  CONSTRAINT csalesstage_copportunity FOREIGN KEY (c_salesstage_id)
      REFERENCES cslsstg (c_salesstage_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE coptn ADD
  CONSTRAINT salesrep_copportunity FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_order : c_order
--

ALTER TABLE c_order ADD
  CONSTRAINT adorg_corder FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT adorgtrx_corder FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT aduser_corder FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT aduser_sr_corder FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT aduserbill_corder FOREIGN KEY (bill_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT c_doctype_corder FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cactivity_corder FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cbpartner_corder FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cbpartnerbill_corder FOREIGN KEY (bill_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cbpartnerlocation_corder FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cbpartnerpay_corder FOREIGN KEY (pay_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cbplocationbill_corder FOREIGN KEY (bill_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cbplocationpay_corder FOREIGN KEY (pay_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT ccampaign_corder FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT ccashline_corder FOREIGN KEY (c_cashline_id)
      REFERENCES c_cashline (c_cashline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT ccharge_corder FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cconversiontype_corder FOREIGN KEY (c_conversiontype_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT ccurrency_corder FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cdoctypetarget_corder FOREIGN KEY (c_doctypetarget_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT celemenrvalueuser2_corder FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT celementvalueuser1_corder FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT copportunity_corder FOREIGN KEY (c_opportunity_id)
      REFERENCES coptn (c_opportunity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT corder_ref FOREIGN KEY (ref_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cordersource_corder FOREIGN KEY (c_ordersource_id)
      REFERENCES cordsrc (c_ordersource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cpayment_corder FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cpaymentterm_soheader FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cpos_corder FOREIGN KEY (c_pos_id)
      REFERENCES c_pos (c_pos_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT cproject_corder FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT dropshipbpartner_corder FOREIGN KEY (dropship_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT dropshiplocation_corder FOREIGN KEY (dropship_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT dropshipuser_corder FOREIGN KEY (dropship_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT linkorder_corder FOREIGN KEY (link_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT mfreightcategory_order FOREIGN KEY (m_freightcategory_id)
      REFERENCES mfhtcat (m_freightcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT mpricelist_soheader FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT mshipper_corder FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT mwarehouse_corder FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT user3_corder FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_order ADD
  CONSTRAINT user4_corder FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_orderline : cordln
--

ALTER TABLE cordln ADD
  CONSTRAINT adorg_corderline FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT adorgtrx_corderline FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT cactivity_corderline FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT cbpartner_soline FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT cbpartnerlocation_soline FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT ccampaign_corderline FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT ccharge_corderline FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT ccurrency_corderline FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT celemenrvalueuser1_corderline FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT celemenrvalueuser2_corderline FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT corder_corderline FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cordln ADD
  CONSTRAINT corderline_ref FOREIGN KEY (ref_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT cproject_corderline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT cprojectphase_corderline FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE cordln ADD
  CONSTRAINT cprojecttask_corderline FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE cordln ADD
  CONSTRAINT ctax_corderline FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT cuom_corderline FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT linkorderline_corderline FOREIGN KEY (link_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cordln ADD
  CONSTRAINT mattrsetinst_corderline FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT mfreightcategory_corderline FOREIGN KEY (m_freightcategory_id)
      REFERENCES mfhtcat (m_freightcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT mproduct_corderline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT mpromotion_corderline FOREIGN KEY (m_promotion_id)
      REFERENCES mpmn (m_promotion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT mshipper_corderline FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT mwarehouse_corderline FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT ppcostcollector_corderline FOREIGN KEY (pp_cost_collector_id)
      REFERENCES ppcstcol (pp_cost_collector_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT sresourceassign_corderline FOREIGN KEY (s_resourceassignment_id)
      REFERENCES srscea (s_resourceassignment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT user3_corderline FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordln ADD
  CONSTRAINT user4_corderline FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_ordersource : cordsrc
--

ALTER TABLE cordsrc ADD
  CONSTRAINT adclient_cordersource FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordsrc ADD
  CONSTRAINT adorg_cordersource FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordsrc ADD
  CONSTRAINT aduser1_cordersource FOREIGN KEY (createdby)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cordsrc ADD
  CONSTRAINT aduser2_cordersource FOREIGN KEY (updatedby)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_ordertax : c_ordertax
--

ALTER TABLE c_ordertax ADD
  CONSTRAINT corder_cordertax FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE c_ordertax ADD
  CONSTRAINT ctax_cordertax FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_orgassignment : corgasn
--

ALTER TABLE corgasn ADD
  CONSTRAINT adorg_corgassignment FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE corgasn ADD
  CONSTRAINT aduser_corgassignment FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.c_orgassignment
  OWNER TO adempiere;

--
-- Table : c_payment : c_payment
--

ALTER TABLE c_payment ADD
  CONSTRAINT adorg_cpayment FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT adorgtrx_cpayment FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT c_payment__c_cashbo_c_cashbook FOREIGN KEY (c_cashbook_id)
      REFERENCES c_cashbook (c_cashbook_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT cactivity_cpayment FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT cbankaccount_cpayment FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT cbpartner_cpayment FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT cbpbankacct_cpayment FOREIGN KEY (c_bp_bankaccount_id)
      REFERENCES cbpbacct (c_bp_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE c_payment ADD
  CONSTRAINT ccampaign_cpayment FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT ccharge_cpayment FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT cconversiontype_cpayment FOREIGN KEY (c_conversiontype_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT ccurrency_cpayment FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT cdoctype_cpayment FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT celementvalueuser1_cpayment FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT celementvalueuser2_cpayment FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT cinvoice_cpayment FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT corder_cpayment FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT cpaymentbatch_cpayment FOREIGN KEY (c_paymentbatch_id)
      REFERENCES cpayb (c_paymentbatch_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT cpos_cpayment FOREIGN KEY (c_pos_id)
      REFERENCES c_pos (c_pos_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT cproject_cpayment FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT refpayment_cpayment FOREIGN KEY (ref_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT relatedpayment_cpayment FOREIGN KEY (relatedpayment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT reversal_cpayment FOREIGN KEY (reversal_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT user3_cpayment FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_payment ADD
  CONSTRAINT user4_cpayment FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_paymentallocate : cpmtalc
--

ALTER TABLE cpmtalc ADD
  CONSTRAINT cinvoice_cpaymentallocate FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpmtalc ADD
  CONSTRAINT cpayment_cpaymentallocate FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cpmtalc ADD
  CONSTRAINT cpaymtallocate_callocationline FOREIGN KEY (c_allocationline_id)
      REFERENCES calcln (c_allocationline_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : c_paymentbatch : cpayb
--

ALTER TABLE cpayb ADD
  CONSTRAINT cpaymtprocessor_cpaymtbatch FOREIGN KEY (c_paymentprocessor_id)
      REFERENCES cpayp (c_paymentprocessor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_paymentprocessor : cpayp
--

ALTER TABLE cpayp ADD
  CONSTRAINT adsequence_cpaymentprocessor FOREIGN KEY (ad_sequence_id)
      REFERENCES adseq (ad_sequence_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayp ADD
  CONSTRAINT cbankaccount_cpaymtprocessor FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayp ADD
  CONSTRAINT ccurrency_cpaymentprocessor FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_paymentterm : cpaytrm
--


--
-- Table : c_paymentterm_trl : cpaytrmt
--

ALTER TABLE cpaytrmt ADD
  CONSTRAINT adlanguage_cpaymenttermtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpaytrmt ADD
  CONSTRAINT cpaymentterm_cpaytermtrl FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_payschedule : cpaysched
--

ALTER TABLE cpaysched ADD
  CONSTRAINT cpaymentterm_cpayschedule FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_payselection : cpaysel
--

ALTER TABLE cpaysel ADD
  CONSTRAINT cbankaccount_cpayselection FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpaysel ADD
  CONSTRAINT ccurrency_cpayselection FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpaysel ADD
  CONSTRAINT cdoctype_cpayselection FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_payselectioncheck : cpayselchk
--

ALTER TABLE cpayselchk ADD
  CONSTRAINT cbpartner_cpayselectioncheck FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselchk ADD
  CONSTRAINT cbpbankaccount_cpayselectionch FOREIGN KEY (c_bp_bankaccount_id)
      REFERENCES cbpbacct (c_bp_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselchk ADD
  CONSTRAINT cpayment_cpayselectioncheck FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselchk ADD
  CONSTRAINT cpayselection_cpayselectcheck FOREIGN KEY (c_payselection_id)
      REFERENCES cpaysel (c_payselection_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_payselectionline : cpayselln
--

ALTER TABLE cpayselln ADD
  CONSTRAINT cbankaccountto_cpayselectionli FOREIGN KEY (c_bankaccountto_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselln ADD
  CONSTRAINT cbpartner_cpayselectionline FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselln ADD
  CONSTRAINT cbpbankaccount_cpayselectionli FOREIGN KEY (c_bp_bankaccount_id)
      REFERENCES cbpbacct (c_bp_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselln ADD
  CONSTRAINT ccharge_cpayselectionline FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselln ADD
  CONSTRAINT cconversionrate_cpayselectionl FOREIGN KEY (c_conversion_rate_id)
      REFERENCES ccvnr (c_conversion_rate_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselln ADD
  CONSTRAINT cconversiontype_cpayselectionl FOREIGN KEY (c_conversiontype_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselln ADD
  CONSTRAINT cinvoice_cpayselectline FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselln ADD
  CONSTRAINT cinvoicepayschedule_cpayselect FOREIGN KEY (c_invoicepayschedule_id)
      REFERENCES cinvps (c_invoicepayschedule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselln ADD
  CONSTRAINT corder_cpayselectionline FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselln ADD
  CONSTRAINT cpaysel_cpayselline FOREIGN KEY (c_payselection_id)
      REFERENCES cpaysel (c_payselection_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cpayselln ADD
  CONSTRAINT cpayselcheck_cpayselline FOREIGN KEY (c_payselectioncheck_id)
      REFERENCES cpayselchk (c_payselectioncheck_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselln ADD
  CONSTRAINT cpayselectionlineparent_cpayse FOREIGN KEY (c_payselectionline_parent_id)
      REFERENCES cpayselln (c_payselectionline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cpayselln ADD
  CONSTRAINT hrmovement_cpayselectionline FOREIGN KEY (hr_movement_id)
      REFERENCES hrmvt (hr_movement_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_period : c_period
--

ALTER TABLE c_period ADD
  CONSTRAINT c_periodclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_period ADD
  CONSTRAINT c_periodorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_period ADD
  CONSTRAINT c_year_period FOREIGN KEY (c_year_id)
      REFERENCES c_year (c_year_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_periodcontrol : cpdctl
--

ALTER TABLE cpdctl ADD
  CONSTRAINT c_period_periodcontrol FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_phase : c_phase
--

ALTER TABLE c_phase ADD
  CONSTRAINT adworkflow_cphase FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_phase ADD
  CONSTRAINT cprojecttype_cphase FOREIGN KEY (c_projecttype_id)
      REFERENCES cprojtyp (c_projecttype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE c_phase ADD
  CONSTRAINT mproduct_cphase FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_phase ADD
  CONSTRAINT ppproductbom_cphase FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_phase ADD
  CONSTRAINT rstandardrequesttype_cphase FOREIGN KEY (r_standardrequesttype_id)
      REFERENCES rstdreqtyp (r_standardrequesttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_pos : c_pos
--

ALTER TABLE c_pos ADD
  CONSTRAINT aduser_cpos FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_pos ADD
  CONSTRAINT cashtransferbankaccount_cpos FOREIGN KEY (cashtransferbankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_pos ADD
  CONSTRAINT cbankaccount_cpos FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_pos ADD
  CONSTRAINT cbpartnercashtrx_cpos FOREIGN KEY (c_bpartnercashtrx_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_pos ADD
  CONSTRAINT ccashbook_cpos FOREIGN KEY (c_cashbook_id)
      REFERENCES c_cashbook (c_cashbook_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_pos ADD
  CONSTRAINT cdoctype_cpos FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_pos ADD
  CONSTRAINT cposkeylayout_cpos FOREIGN KEY (c_poskeylayout_id)
      REFERENCES cposkl (c_poskeylayout_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_pos ADD
  CONSTRAINT mpricelist_cpos FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_pos ADD
  CONSTRAINT mwarehouse_cpos FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_pos ADD
  CONSTRAINT oskkeylayout_cpos FOREIGN KEY (osk_keylayout_id)
      REFERENCES cposkl (c_poskeylayout_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_pos ADD
  CONSTRAINT osnpkeylayout_cpos FOREIGN KEY (osnp_keylayout_id)
      REFERENCES cposkl (c_poskeylayout_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_poskey : c_poskey
--

ALTER TABLE c_poskey ADD
  CONSTRAINT adimage_cposkey FOREIGN KEY (ad_image_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_poskey ADD
  CONSTRAINT adprintcolor_cposkey FOREIGN KEY (ad_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_poskey ADD
  CONSTRAINT adprintfont_cposkey FOREIGN KEY (ad_printfont_id)
      REFERENCES adprtfnt (ad_printfont_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_poskey ADD
  CONSTRAINT cposkeylayout_c_poskey FOREIGN KEY (c_poskeylayout_id)
      REFERENCES cposkl (c_poskeylayout_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE c_poskey ADD
  CONSTRAINT mproduct_cposkey FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_poskey ADD
  CONSTRAINT subkeylayout_cposkey FOREIGN KEY (subkeylayout_id)
      REFERENCES cposkl (c_poskeylayout_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_poskeylayout : cposkl
--

ALTER TABLE cposkl ADD
  CONSTRAINT adprintcolor_cposkeylayout FOREIGN KEY (ad_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cposkl ADD
  CONSTRAINT adprintfont_cposkeylayout FOREIGN KEY (ad_printfont_id)
      REFERENCES adprtfnt (ad_printfont_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_project : c_project
--

ALTER TABLE c_project ADD
  CONSTRAINT adclient_cproject FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT adcolor_cproject FOREIGN KEY (ad_color_id)
      REFERENCES ad_color (ad_color_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT adorg_cproject FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT adorgtrx_cproject FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT aduser_cproject FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE c_project ADD
  CONSTRAINT aduser_sr_cproject FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT cactivity_cproject FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT cbpartner_cproject FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT cbpartnersr_cproject FOREIGN KEY (c_bpartnersr_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT cbplocation_cproject FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT ccampaign_cproject FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT ccurrency_cproject FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT cpaymentterm_cproject FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT cphase_cproject FOREIGN KEY (c_phase_id)
      REFERENCES c_phase (c_phase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT cprojectcategory_cproject FOREIGN KEY (c_projectcategory_id)
      REFERENCES cprjcat (c_projectcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT cprojectclass_cproject FOREIGN KEY (c_projectclass_id)
      REFERENCES cprjcls (c_projectclass_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT cprojectgroup_cproject FOREIGN KEY (c_projectgroup_id)
      REFERENCES cprjgrp (c_projectgroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT cprojectstatus_cproject FOREIGN KEY (c_projectstatus_id)
      REFERENCES cprjsts (c_projectstatus_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT cprojecttype_cproject FOREIGN KEY (c_projecttype_id)
      REFERENCES cprojtyp (c_projecttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT csalesregion_cproject FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT mpricelistversion_cproject FOREIGN KEY (m_pricelist_version_id)
      REFERENCES mplstver (m_pricelist_version_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT mwarehouse_cproject FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT projectmanager_cproject FOREIGN KEY (projectmanager_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT user1_cproject FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT user2_cproject FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT user3_cproject FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_project ADD
  CONSTRAINT user4_cproject FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_project_acct : cprojacct
--

ALTER TABLE cprojacct ADD
  CONSTRAINT c_project_projectacct FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cprojacct ADD
  CONSTRAINT cacctschema_cprojectacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cprojacct ADD
  CONSTRAINT vc_pjasset_cproject FOREIGN KEY (pj_asset_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojacct ADD
  CONSTRAINT vc_pjwip_cproject FOREIGN KEY (pj_wip_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projectcategory : cprjcat
--

ALTER TABLE cprjcat ADD
  CONSTRAINT adprintcolor_cprojectcategory FOREIGN KEY (ad_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprjcat ADD
  CONSTRAINT projectcategoryparent_cprojectcategory FOREIGN KEY (projectcategoryparent_id)
      REFERENCES cprjcat (c_projectcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projectclass : cprjcls
--

ALTER TABLE cprjcls ADD
  CONSTRAINT adprintcolor_cprojectclass FOREIGN KEY (ad_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprjcls ADD
  CONSTRAINT projectclassparent_cprojectcla FOREIGN KEY (projectclassparent_id)
      REFERENCES cprjcls (c_projectclass_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projectgroup : cprjgrp
--

ALTER TABLE cprjgrp ADD
  CONSTRAINT adprintcolor_cprojectgroup FOREIGN KEY (ad_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprjgrp ADD
  CONSTRAINT projectgroupparent_cprojectgro FOREIGN KEY (projectgroupparent_id)
      REFERENCES cprjgrp (c_projectgroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projectissue : cprojiss
--

ALTER TABLE cprojiss ADD
  CONSTRAINT cproject_cprojectissue FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojiss ADD
  CONSTRAINT mattrsetinst_cprojectissue FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojiss ADD
  CONSTRAINT minoutline_cprojectissue FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojiss ADD
  CONSTRAINT mlocator_cprojectissue FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojiss ADD
  CONSTRAINT mproduct_cprojectissue FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojiss ADD
  CONSTRAINT stimeexpline_cprojectissue FOREIGN KEY (s_timeexpenseline_id)
      REFERENCES stimexpln (s_timeexpenseline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projectissuema : cprjima
--

ALTER TABLE cprjima ADD
  CONSTRAINT cprojectissue_cprojectissuema FOREIGN KEY (c_projectissue_id)
      REFERENCES cprojiss (c_projectissue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprjima ADD
  CONSTRAINT masi_cprojectissuema FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projectline : cprojln
--

ALTER TABLE cprojln ADD
  CONSTRAINT adworkflow_cprojectline FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojln ADD
  CONSTRAINT corder_cprojectline FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojln ADD
  CONSTRAINT corderpo_cprojectline FOREIGN KEY (c_orderpo_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojln ADD
  CONSTRAINT cproject_cprojectline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cprojln ADD
  CONSTRAINT cprojectissue_cprojectline FOREIGN KEY (c_projectissue_id)
      REFERENCES cprojiss (c_projectissue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojln ADD
  CONSTRAINT cprojectphase_cprojectline FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE cprojln ADD
  CONSTRAINT cprojecttask_cprojectline FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE cprojln ADD
  CONSTRAINT mproduct_cprojectline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojln ADD
  CONSTRAINT mproductcat_cprojectline FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojln ADD
  CONSTRAINT pporder_cprojectline FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojln ADD
  CONSTRAINT ppproductbom_cprojectline FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojln ADD
  CONSTRAINT vendor_cprojectline FOREIGN KEY (vendor_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projectmember : cprjmbr
--

ALTER TABLE cprjmbr ADD
  CONSTRAINT aduser_cprojectmember FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprjmbr ADD
  CONSTRAINT cproject_cprojectmember FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprjmbr ADD
  CONSTRAINT cprojectmembertype_cprojectmem FOREIGN KEY (c_projectmembertype_id)
      REFERENCES cprjmbrtyp (c_projectmembertype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projectmembertype : cprjmbrtyp
--


--
-- Table : c_projectphase : cprojphse
--

ALTER TABLE cprojphse ADD
  CONSTRAINT adorgtrx_cprojectphase FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT adworkflow_cprojectphase FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT cactivity_cprojectphase FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT ccampaign_cprojectphase FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT corder_cprojectphase FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT corderpo_cprojectphase FOREIGN KEY (c_orderpo_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT cphase_cprojectphase FOREIGN KEY (c_phase_id)
      REFERENCES c_phase (c_phase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT cproject_cprojectphase FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT cprojectstatus_cprojectphase FOREIGN KEY (c_projectstatus_id)
      REFERENCES cprjsts (c_projectstatus_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT csalesregion_cprojectphase FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT mproduct_cprojectphase FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT pporder_cprojectphase FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT ppproductbom_cprojectphase FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT responsible_cprojectphase FOREIGN KEY (responsible_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT user1_cprojectphase FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT user2_cprojectphase FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT user3_cprojectphase FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT user4_cprojectphase FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojphse ADD
  CONSTRAINT vendor_cprojectphase FOREIGN KEY (vendor_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projectprocessor : cprjprc
--

ALTER TABLE cprjprc ADD
  CONSTRAINT cprojecttaskcategory_cprojectp FOREIGN KEY (c_projecttaskcategory_id)
      REFERENCES cprjtskcat (c_projecttaskcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprjprc ADD
  CONSTRAINT cprojecttype_cprojectprocessor FOREIGN KEY (c_projecttype_id)
      REFERENCES cprojtyp (c_projecttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprjprc ADD
  CONSTRAINT supervisor_cprojectprocessor FOREIGN KEY (supervisor_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projectprocessorlog : cprjprcl
--

ALTER TABLE cprjprcl ADD
  CONSTRAINT cprojectprocessor_cprojectproc FOREIGN KEY (c_projectprocessor_id)
      REFERENCES cprjprc (c_projectprocessor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projectstatus : cprjsts
--

ALTER TABLE cprjsts ADD
  CONSTRAINT cprojectstatuscategory_cprojec FOREIGN KEY (c_projectstatuscategory_id)
      REFERENCES cprjstscat (c_projectstatuscategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprjsts ADD
  CONSTRAINT nextstatus_cprojectstatus FOREIGN KEY (next_status_id)
      REFERENCES cprjsts (c_projectstatus_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projectstatuscategory : cprjstscat
--


--
-- Table : c_projecttask : cprojtsk
--

ALTER TABLE cprojtsk ADD
  CONSTRAINT adorgtrx_cprojecttask FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT cactivity_cprojecttask FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT ccampaign_cprojecttask FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT corder_cprojecttask FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT corderpo_cprojecttask FOREIGN KEY (c_orderpo_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT cprojectphase_cprojecttask FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT cprojectstatus_cprojecttask FOREIGN KEY (c_projectstatus_id)
      REFERENCES cprjsts (c_projectstatus_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT cprojecttaskcategory_cprojectt FOREIGN KEY (c_projecttaskcategory_id)
      REFERENCES cprjtskcat (c_projecttaskcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT csalesregion_cprojecttask FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT ctask_cprojecttask FOREIGN KEY (c_task_id)
      REFERENCES c_task (c_task_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT mproduct_cprojecttask FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT pporder_cprojecttask FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT ppproductbom_cprojecttask FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT responsible_cprojecttask FOREIGN KEY (responsible_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT user1_cprojecttask FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT user2_cprojecttask FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT user3_cprojecttask FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT user4_cprojecttask FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtsk ADD
  CONSTRAINT vendor_cprojecttask FOREIGN KEY (vendor_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projecttaskcategory : cprjtskcat
--

ALTER TABLE cprjtskcat ADD
  CONSTRAINT projecttaskcategoryparent_cpro FOREIGN KEY (projecttaskcategoryparent_id)
      REFERENCES cprjtskcat (c_projecttaskcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_projecttype : cprojtyp
--

ALTER TABLE cprojtyp ADD
  CONSTRAINT cprojectstatuscategory_cprojec FOREIGN KEY (c_projectstatuscategory_id)
      REFERENCES cprjstscat (c_projectstatuscategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cprojtyp ADD
  CONSTRAINT rstandardrequesttype_cprojectt FOREIGN KEY (r_standardrequesttype_id)
      REFERENCES rstdreqtyp (r_standardrequesttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.c_projecttype
  OWNER TO adempiere;

--
-- Table : c_recurring : crecr
--

ALTER TABLE crecr ADD
  CONSTRAINT cinvoice_crecurring FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crecr ADD
  CONSTRAINT corder_crecurring FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crecr ADD
  CONSTRAINT cpayment_crecurring FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crecr ADD
  CONSTRAINT cproject_crecurring FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crecr ADD
  CONSTRAINT gljournalbatch_crecurring FOREIGN KEY (gl_journalbatch_id)
      REFERENCES gljrnbch (gl_journalbatch_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_recurring_run : crecrr
--

ALTER TABLE crecrr ADD
  CONSTRAINT cinvoice_crecurringrun FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crecrr ADD
  CONSTRAINT corder_crecurringrun FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crecrr ADD
  CONSTRAINT cpayment_crecurringrun FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crecrr ADD
  CONSTRAINT cproject_crecurringrun FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crecrr ADD
  CONSTRAINT crecurring_crecurringrun FOREIGN KEY (c_recurring_id)
      REFERENCES crecr (c_recurring_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crecrr ADD
  CONSTRAINT gljournalbatch_crecurringrun FOREIGN KEY (gl_journalbatch_id)
      REFERENCES gljrnbch (gl_journalbatch_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_region : c_region
--

ALTER TABLE c_region ADD
  CONSTRAINT c_regionclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_region ADD
  CONSTRAINT c_regionorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_region ADD
  CONSTRAINT ccountry_cregion FOREIGN KEY (c_country_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_remuneration : crmnn
--


--
-- Table : c_revenuerecognition : crevrcgn
--


--
-- Table : c_revenuerecognition_plan : crvnrecp
--

ALTER TABLE crvnrecp ADD
  CONSTRAINT cacctschema_crevrecplan FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crvnrecp ADD
  CONSTRAINT ccurrency_crevenuerecplan FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crvnrecp ADD
  CONSTRAINT cinvoiceline_crevenuerecplan FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crvnrecp ADD
  CONSTRAINT crevenuerecognition_plan FOREIGN KEY (c_revenuerecognition_id)
      REFERENCES crevrcgn (c_revenuerecognition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crvnrecp ADD
  CONSTRAINT vc_prevenue_crevenuerecognitio FOREIGN KEY (p_revenue_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crvnrecp ADD
  CONSTRAINT vc_unearnedrevenue_crevenuerec FOREIGN KEY (unearnedrevenue_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_revenuerecognition_run : crvnrecr
--

ALTER TABLE crvnrecr ADD
  CONSTRAINT crevrecplan_crefrecrun FOREIGN KEY (c_revenuerecognition_plan_id)
      REFERENCES crvnrecp (c_revenuerecognition_plan_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crvnrecr ADD
  CONSTRAINT gljournal_crevenuerecrun FOREIGN KEY (gl_journal_id)
      REFERENCES gl_journal (gl_journal_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_rfq : c_rfq
--

ALTER TABLE c_rfq ADD
  CONSTRAINT aduser_crfq FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_rfq ADD
  CONSTRAINT adusersalesrep_crfq FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_rfq ADD
  CONSTRAINT cbpartner_crfq FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_rfq ADD
  CONSTRAINT cbplocation_crfq FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_rfq ADD
  CONSTRAINT ccurrency_crfq FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_rfq ADD
  CONSTRAINT corder_crfq FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_rfq ADD
  CONSTRAINT crfqtopic_crfq FOREIGN KEY (c_rfq_topic_id)
      REFERENCES crfqt (c_rfq_topic_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_rfq_topic : crfqt
--

ALTER TABLE crfqt ADD
  CONSTRAINT adprintformat_arfqtopic FOREIGN KEY (ad_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : c_rfq_topicsubscriber : crfqts
--

ALTER TABLE crfqts ADD
  CONSTRAINT aduser_arfqtopicsubcr FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crfqts ADD
  CONSTRAINT c_rfqtopic_subscriber FOREIGN KEY (c_rfq_topic_id)
      REFERENCES crfqt (c_rfq_topic_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE crfqts ADD
  CONSTRAINT cbpartner_crfqtopicsubr FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crfqts ADD
  CONSTRAINT cbpartnerloc_crfqtopicsubr FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_rfq_topicsubscriberonly : crfqtso
--

ALTER TABLE crfqtso ADD
  CONSTRAINT crfqtopicsubscriber_only FOREIGN KEY (c_rfq_topicsubscriber_id)
      REFERENCES crfqts (c_rfq_topicsubscriber_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE crfqtso ADD
  CONSTRAINT mprodcategory_crfqtsubonly FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crfqtso ADD
  CONSTRAINT mproduct_crfqtsubonly FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_rfqline : c_rfqline
--

ALTER TABLE c_rfqline ADD
  CONSTRAINT crfq_crfqline FOREIGN KEY (c_rfq_id)
      REFERENCES c_rfq (c_rfq_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE c_rfqline ADD
  CONSTRAINT masetinstance_crfqline FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_rfqline ADD
  CONSTRAINT mproduct_crfqline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_rfqlineqty : crfqlq
--

ALTER TABLE crfqlq ADD
  CONSTRAINT crfqline_crfqlineqty FOREIGN KEY (c_rfqline_id)
      REFERENCES c_rfqline (c_rfqline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE crfqlq ADD
  CONSTRAINT cuom_crfqlineqty FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_rfqresponse : crfqr
--

ALTER TABLE crfqr ADD
  CONSTRAINT aduser_crfqresponse FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crfqr ADD
  CONSTRAINT cbpartner_crfqresponse FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crfqr ADD
  CONSTRAINT cbplocation_crfqresponse FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crfqr ADD
  CONSTRAINT ccurrency_crfqresponse FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crfqr ADD
  CONSTRAINT corder_crfqresponse FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE crfqr ADD
  CONSTRAINT crfq_crfqresponse FOREIGN KEY (c_rfq_id)
      REFERENCES c_rfq (c_rfq_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_rfqresponseline : crfqrln
--

ALTER TABLE crfqrln ADD
  CONSTRAINT crfqline_crfqresponseline FOREIGN KEY (c_rfqline_id)
      REFERENCES c_rfqline (c_rfqline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE crfqrln ADD
  CONSTRAINT crfqresponse_line FOREIGN KEY (c_rfqresponse_id)
      REFERENCES crfqr (c_rfqresponse_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_rfqresponselineqty : crfqrlnq
--

ALTER TABLE crfqrlnq ADD
  CONSTRAINT crfqlineqty_crfqresplineqty FOREIGN KEY (c_rfqlineqty_id)
      REFERENCES crfqlq (c_rfqlineqty_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE crfqrlnq ADD
  CONSTRAINT crfqresonseline_qty FOREIGN KEY (c_rfqresponseline_id)
      REFERENCES crfqrln (c_rfqresponseline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_saleshistory : cslshst
--

ALTER TABLE cslshst ADD
  CONSTRAINT cactivity_csaleshistory FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT cbpartner_csaleshistory FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT cbpartnerlocation_csaleshistor FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT cbpgroup_csaleshistory FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT ccampaign_csaleshistory FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT cinvoiceline_csaleshistory FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT cproject_csaleshistory FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT cprojectphase_csaleshistory FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT cprojecttask_csaleshistory FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT csalesregion_csaleshistory FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT mproduct_csaleshistory FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT mproductcategory_csaleshistory FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT mproductclass_csaleshistory FOREIGN KEY (m_product_class_id)
      REFERENCES mprdcls (m_product_class_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT mproductclassification_csalesh FOREIGN KEY (m_product_classification_id)
      REFERENCES mprdclsn (m_product_classification_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT mproductgroup_csaleshistory FOREIGN KEY (m_product_group_id)
      REFERENCES mprdgrp (m_product_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT mwarehouse_csaleshistory FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT salesrep_csaleshistory FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT user1_csaleshistory FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT user2_csaleshistory FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT user3_csaleshistory FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslshst ADD
  CONSTRAINT user4_csaleshistory FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_salesregion : csrgn
--

ALTER TABLE csrgn ADD
  CONSTRAINT salesrep_csalesregion FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_salesstage : cslsstg
--


--
-- Table : c_servicelevel : cslvl
--

ALTER TABLE cslvl ADD
  CONSTRAINT crevrecplan_cservicelevel FOREIGN KEY (c_revenuerecognition_plan_id)
      REFERENCES crvnrecp (c_revenuerecognition_plan_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cslvl ADD
  CONSTRAINT mproduct_cservicelevel FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_servicelevelline : cslvlln
--

ALTER TABLE cslvlln ADD
  CONSTRAINT cservicelevel_line FOREIGN KEY (c_servicelevel_id)
      REFERENCES cslvl (c_servicelevel_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_subacct : c_subacct
--

ALTER TABLE c_subacct ADD
  CONSTRAINT celementvalue_csubacct FOREIGN KEY (c_elementvalue_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_subscription : csub
--

ALTER TABLE csub ADD
  CONSTRAINT cbpartner_csubscription FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE csub ADD
  CONSTRAINT csubscrtype_csubscription FOREIGN KEY (c_subscriptiontype_id)
      REFERENCES csubtyp (c_subscriptiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE csub ADD
  CONSTRAINT mproduct_csubscription FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.c_subscription
  OWNER TO adempiere;

--
-- Table : c_subscription_delivery : csubdlv
--

ALTER TABLE csubdlv ADD
  CONSTRAINT csubcription_csubscrdelivery FOREIGN KEY (c_subscription_id)
      REFERENCES csub (c_subscription_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.c_subscription_delivery
  OWNER TO adempiere;

--
-- Table : c_subscriptiontype : csubtyp
--


--
-- Table : c_task : c_task
--

ALTER TABLE c_task ADD
  CONSTRAINT adworkflow_ctask FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_task ADD
  CONSTRAINT cphase_ctask FOREIGN KEY (c_phase_id)
      REFERENCES c_phase (c_phase_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE c_task ADD
  CONSTRAINT mproduct_ctask FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_task ADD
  CONSTRAINT ppproductbom_ctask FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_task ADD
  CONSTRAINT rstandardrequesttype_ctask FOREIGN KEY (r_standardrequesttype_id)
      REFERENCES rstdreqtyp (r_standardrequesttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_tax : c_tax
--

ALTER TABLE c_tax ADD
  CONSTRAINT adrule_ctax FOREIGN KEY (ad_rule_id)
      REFERENCES ad_rule (ad_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_tax ADD
  CONSTRAINT c_country_c_tax FOREIGN KEY (c_country_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_tax ADD
  CONSTRAINT c_countryto_c_tax FOREIGN KEY (to_country_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_tax ADD
  CONSTRAINT c_region_c_tax FOREIGN KEY (c_region_id)
      REFERENCES c_region (c_region_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_tax ADD
  CONSTRAINT c_regionto_c_tax FOREIGN KEY (to_region_id)
      REFERENCES c_region (c_region_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_tax ADD
  CONSTRAINT ctax_parent FOREIGN KEY (parent_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_tax ADD
  CONSTRAINT ctaxcategory_ctax FOREIGN KEY (c_taxcategory_id)
      REFERENCES ctaxcat (c_taxcategory_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_tax_acct : c_tax_acct
--

ALTER TABLE c_tax_acct ADD
  CONSTRAINT cacctschema_ctaxacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE c_tax_acct ADD
  CONSTRAINT ctax_ctaxacct FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE c_tax_acct ADD
  CONSTRAINT vc_tcredit_ctax FOREIGN KEY (t_credit_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_tax_acct ADD
  CONSTRAINT vc_tdue_ctax FOREIGN KEY (t_due_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_tax_acct ADD
  CONSTRAINT vc_texpense_ctax FOREIGN KEY (t_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_tax_acct ADD
  CONSTRAINT vc_tliability_ctax FOREIGN KEY (t_liability_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_tax_acct ADD
  CONSTRAINT vc_trec_ctax FOREIGN KEY (t_receivables_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_tax_trl : c_tax_trl
--

ALTER TABLE c_tax_trl ADD
  CONSTRAINT adlanguage_ctaxtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE c_tax_trl ADD
  CONSTRAINT ctax_ctaxtrl FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_taxbase : c_taxbase
--


--
-- Table : c_taxcategory : ctaxcat
--


--
-- Table : c_taxcategory_trl : ctaxcatt
--

ALTER TABLE ctaxcatt ADD
  CONSTRAINT adlanguage_ctaxcategorytrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxcatt ADD
  CONSTRAINT ctaxcategory_trl FOREIGN KEY (c_taxcategory_id)
      REFERENCES ctaxcat (c_taxcategory_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_taxdeclaration : ctaxdcl
--


--
-- Table : c_taxdeclarationacct : ctaxdcla
--

ALTER TABLE ctaxdcla ADD
  CONSTRAINT cacctschema_ctaxdeclacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ctaxdcla ADD
  CONSTRAINT ctaxdecl_ctaxdeclacct FOREIGN KEY (c_taxdeclaration_id)
      REFERENCES ctaxdcl (c_taxdeclaration_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdcla ADD
  CONSTRAINT factacct_ctaxdeclacct FOREIGN KEY (fact_acct_id)
      REFERENCES fact_acct (fact_acct_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_taxdeclarationline : ctaxdclln
--

ALTER TABLE ctaxdclln ADD
  CONSTRAINT callocationline_ctaxdeclline FOREIGN KEY (c_allocationline_id)
      REFERENCES calcln (c_allocationline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdclln ADD
  CONSTRAINT cbpartner_ctaxdeclline FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdclln ADD
  CONSTRAINT ccurrency_ctaxdeclline FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdclln ADD
  CONSTRAINT cinvoice_ctaxdeclline FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdclln ADD
  CONSTRAINT cinvoiceline_ctaxdeclline FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdclln ADD
  CONSTRAINT ctax_ctaxdeclline FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdclln ADD
  CONSTRAINT ctaxdeclaration_ctaxdeclline FOREIGN KEY (c_taxdeclaration_id)
      REFERENCES ctaxdcl (c_taxdeclaration_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_taxdefinition : ctaxdfn
--

ALTER TABLE ctaxdfn ADD
  CONSTRAINT adorgtype_ctaxdefinition FOREIGN KEY (ad_orgtype_id)
      REFERENCES ad_orgtype (ad_orgtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdfn ADD
  CONSTRAINT cbpartner_ctaxdefinition FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdfn ADD
  CONSTRAINT cbpgroup_ctaxdefinition FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdfn ADD
  CONSTRAINT ctax_ctaxdefinition FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdfn ADD
  CONSTRAINT ctaxbase_ctaxdefinition FOREIGN KEY (c_taxbase_id)
      REFERENCES c_taxbase (c_taxbase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdfn ADD
  CONSTRAINT ctaxcategory_ctaxdefinition FOREIGN KEY (c_taxcategory_id)
      REFERENCES ctaxcat (c_taxcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdfn ADD
  CONSTRAINT ctaxgroup_ctaxdefinition FOREIGN KEY (c_taxgroup_id)
      REFERENCES c_taxgroup (c_taxgroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdfn ADD
  CONSTRAINT ctaxtype_ctaxdefinition FOREIGN KEY (c_taxtype_id)
      REFERENCES c_taxtype (c_taxtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdfn ADD
  CONSTRAINT mproduct_ctaxdefinition FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ctaxdfn ADD
  CONSTRAINT mproductcategory_ctaxdefinitio FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_taxgroup : c_taxgroup
--


--
-- Table : c_taxpostal : ctaxps
--

ALTER TABLE ctaxps ADD
  CONSTRAINT ctax_ctaxpostal FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_taxtype : c_taxtype
--


--
-- Table : c_uom : c_uom
--

ALTER TABLE c_uom ADD
  CONSTRAINT c_uomclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_uom ADD
  CONSTRAINT c_uomorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_uom_conversion : cuomcvn
--

ALTER TABLE cuomcvn ADD
  CONSTRAINT c_uom_conversionclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cuomcvn ADD
  CONSTRAINT c_uom_conversionorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cuomcvn ADD
  CONSTRAINT c_uomconversionto FOREIGN KEY (c_uom_to_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cuomcvn ADD
  CONSTRAINT cuom_cuomconversion FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cuomcvn ADD
  CONSTRAINT mproduct_cuomconversion FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_uom_trl : c_uom_trl
--

ALTER TABLE c_uom_trl ADD
  CONSTRAINT adlanguage_cuomtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE c_uom_trl ADD
  CONSTRAINT cuom_cuomtrl FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : c_userremuneration : cusrrmn
--

ALTER TABLE cusrrmn ADD
  CONSTRAINT aduser_cuserremuneration FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cusrrmn ADD
  CONSTRAINT cremuneration_cuserrem FOREIGN KEY (c_remuneration_id)
      REFERENCES crmnn (c_remuneration_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_validcombination : cvalcbn
--

ALTER TABLE cvalcbn ADD
  CONSTRAINT adclient_vc FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT adorg_vc FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT adorgtrx_vc FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT cacctschema_cvalidcombination FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT cactivity_cvalidcombination FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT cbpartner_vc FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT celementvalueaccount_vc FOREIGN KEY (account_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT celementvalueuser1_vc FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT celementvalueuser2_vc FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT cproject_vc FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT csalesregion_vc FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT csubacct_cvalidcombination FOREIGN KEY (c_subacct_id)
      REFERENCES c_subacct (c_subacct_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT mlocationfrom_vc FOREIGN KEY (c_locfrom_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT mlocationto_vc FOREIGN KEY (c_locto_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT mproduct_vc FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT socampaign_vc FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT user3_cvalidcombination FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cvalcbn ADD
  CONSTRAINT user4_cvalidcombination FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_withholding : cwh
--

ALTER TABLE cwh ADD
  CONSTRAINT benefici_cwithholding FOREIGN KEY (beneficiary)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cwh ADD
  CONSTRAINT cpaymentterm_cwithholding FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_withholding_acct : cwhacct
--

ALTER TABLE cwhacct ADD
  CONSTRAINT cacctschema_cwithholdingacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cwhacct ADD
  CONSTRAINT cwithholding_cwithholdingacct FOREIGN KEY (c_withholding_id)
      REFERENCES cwh (c_withholding_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cwhacct ADD
  CONSTRAINT vc_withholding_cwithholding FOREIGN KEY (withholding_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : c_year : c_year
--

ALTER TABLE c_year ADD
  CONSTRAINT c_calendar_year FOREIGN KEY (c_calendar_id)
      REFERENCES c_calendar (c_calendar_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_year ADD
  CONSTRAINT c_yearclient FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE c_year ADD
  CONSTRAINT c_yearorg FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : cm_accesscontainer : cmacnt
--

ALTER TABLE cmacnt ADD
  CONSTRAINT cmaccessprofile_cmacccontainer FOREIGN KEY (cm_accessprofile_id)
      REFERENCES cmaprf (cm_accessprofile_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmacnt ADD
  CONSTRAINT cmcontainer_cmaccesscontainer FOREIGN KEY (cm_container_id)
      REFERENCES cmcnt (cm_container_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_accesslistbpgroup : cmalbgrp
--

ALTER TABLE cmalbgrp ADD
  CONSTRAINT cbpgrpup_cmalistbpgroup FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmalbgrp ADD
  CONSTRAINT cmaccessprofile_cmalbpgroup FOREIGN KEY (cm_accessprofile_id)
      REFERENCES cmaprf (cm_accessprofile_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_accesslistrole : cmalr
--

ALTER TABLE cmalr ADD
  CONSTRAINT adrole_cmalistrole FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmalr ADD
  CONSTRAINT cmaccessprofile_cmalistrole FOREIGN KEY (cm_accessprofile_id)
      REFERENCES cmaprf (cm_accessprofile_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_accessmedia : cmamd
--

ALTER TABLE cmamd ADD
  CONSTRAINT cmaccessprofile_cmaccessmedia FOREIGN KEY (cm_accessprofile_id)
      REFERENCES cmaprf (cm_accessprofile_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmamd ADD
  CONSTRAINT cmmedia_cmaccessmedia FOREIGN KEY (cm_media_id)
      REFERENCES cm_media (cm_media_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_accessnewschannel : cmanchn
--

ALTER TABLE cmanchn ADD
  CONSTRAINT cmaccesprofile_cmanewschannel FOREIGN KEY (cm_accessprofile_id)
      REFERENCES cmaprf (cm_accessprofile_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmanchn ADD
  CONSTRAINT cnmewschannel_cmaccessnewsc FOREIGN KEY (cm_newschannel_id)
      REFERENCES cmnchnl (cm_newschannel_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_accessprofile : cmaprf
--


--
-- Table : cm_accessstage : cmastg
--

ALTER TABLE cmastg ADD
  CONSTRAINT cmaccessprofile_cmaccessstage FOREIGN KEY (cm_accessprofile_id)
      REFERENCES cmaprf (cm_accessprofile_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmastg ADD
  CONSTRAINT cmcstage_cmaccessstage FOREIGN KEY (cm_cstage_id)
      REFERENCES cm_cstage (cm_cstage_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_ad : cm_ad
--

ALTER TABLE cm_ad ADD
  CONSTRAINT cmadcat_cmad FOREIGN KEY (cm_ad_cat_id)
      REFERENCES cm_ad_cat (cm_ad_cat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cm_ad ADD
  CONSTRAINT cmmedia_cmad FOREIGN KEY (cm_media_id)
      REFERENCES cm_media (cm_media_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : cm_ad_cat : cm_ad_cat
--

ALTER TABLE cm_ad_cat ADD
  CONSTRAINT cmwebproject_cmadcat FOREIGN KEY (cm_webproject_id)
      REFERENCES cmwprj (cm_webproject_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_broadcastserver : cmbcsvr
--

ALTER TABLE cmbcsvr ADD
  CONSTRAINT cmwebproject_cmbroadcastserver FOREIGN KEY (cm_webproject_id)
      REFERENCES cmwprj (cm_webproject_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : cm_chat : cm_chat
--

ALTER TABLE cm_chat ADD
  CONSTRAINT adtable_cmchat FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cm_chat ADD
  CONSTRAINT cmchattype_cmchat FOREIGN KEY (cm_chattype_id)
      REFERENCES cmctyp (cm_chattype_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : cm_chatentry : cmcent
--

ALTER TABLE cmcent ADD
  CONSTRAINT aduser_cmchatentry FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cmcent ADD
  CONSTRAINT cmchat_chchatentry FOREIGN KEY (cm_chat_id)
      REFERENCES cm_chat (cm_chat_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmcent ADD
  CONSTRAINT cmchatentry_grandparent FOREIGN KEY (cm_chatentrygrandparent_id)
      REFERENCES cmcent (cm_chatentry_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cmcent ADD
  CONSTRAINT cmentrty_cmentryparent FOREIGN KEY (cm_chatentryparent_id)
      REFERENCES cmcent (cm_chatentry_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : cm_chattype : cmctyp
--

ALTER TABLE cmctyp ADD
  CONSTRAINT adtable_cmchattype FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_chattypeupdate : cmctupd
--

ALTER TABLE cmctupd ADD
  CONSTRAINT aduser_cmchattypeupdate FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmctupd ADD
  CONSTRAINT cmchattype_cmchattypeupdate FOREIGN KEY (cm_chattype_id)
      REFERENCES cmctyp (cm_chattype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_chatupdate : cmcupd
--

ALTER TABLE cmcupd ADD
  CONSTRAINT aduser_cmchatupdate FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmcupd ADD
  CONSTRAINT cmchat_cmchatupdate FOREIGN KEY (cm_chat_id)
      REFERENCES cm_chat (cm_chat_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_container : cmcnt
--

ALTER TABLE cmcnt ADD
  CONSTRAINT cmcontainer_cmcontainerlink FOREIGN KEY (cm_containerlink_id)
      REFERENCES cmcnt (cm_container_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE cmcnt ADD
  CONSTRAINT cmtemplate_cmcontainer FOREIGN KEY (cm_template_id)
      REFERENCES cmtpl (cm_template_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cmcnt ADD
  CONSTRAINT cmwebproject_cmcontainer FOREIGN KEY (cm_webproject_id)
      REFERENCES cmwprj (cm_webproject_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_container_element : cmcnte
--

ALTER TABLE cmcnte ADD
  CONSTRAINT cmcontainer_cmcontainerelement FOREIGN KEY (cm_container_id)
      REFERENCES cmcnt (cm_container_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_container_element_trl : cmcntet
--

ALTER TABLE cmcntet ADD
  CONSTRAINT adlanguage_cmcontainereletrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmcntet ADD
  CONSTRAINT cmcontainerelement_cmcetrl FOREIGN KEY (cm_container_element_id)
      REFERENCES cmcnte (cm_container_element_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_container_trl : cmcntt
--

ALTER TABLE cmcntt ADD
  CONSTRAINT adlanguage_cmcontainertrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmcntt ADD
  CONSTRAINT cmcontainer_cmcontainertrl FOREIGN KEY (cm_container_id)
      REFERENCES cmcnt (cm_container_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_container_url : cmcnturl
--

ALTER TABLE cmcnturl ADD
  CONSTRAINT cmcontainer_cmcontainerurl FOREIGN KEY (cm_container_id)
      REFERENCES cmcnt (cm_container_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_containerttable : cmcnttbl
--

ALTER TABLE cmcnttbl ADD
  CONSTRAINT cmcontainer_cmcontainerttable FOREIGN KEY (cm_container_id)
      REFERENCES cmcnt (cm_container_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmcnttbl ADD
  CONSTRAINT cmttable_cmcontainertable FOREIGN KEY (cm_templatetable_id)
      REFERENCES cmtpltbl (cm_templatetable_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_cstage : cm_cstage
--

ALTER TABLE cm_cstage ADD
  CONSTRAINT cmcstage_cmcstagelink FOREIGN KEY (cm_cstagelink_id)
      REFERENCES cm_cstage (cm_cstage_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE cm_cstage ADD
  CONSTRAINT cmtemplate_cmcstage FOREIGN KEY (cm_template_id)
      REFERENCES cmtpl (cm_template_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cm_cstage ADD
  CONSTRAINT cmwebproject_cmcstage FOREIGN KEY (cm_webproject_id)
      REFERENCES cmwprj (cm_webproject_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_cstage_element : cmcse
--

ALTER TABLE cmcse ADD
  CONSTRAINT cmcstage_cmcstageelement FOREIGN KEY (cm_cstage_id)
      REFERENCES cm_cstage (cm_cstage_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_cstage_element_trl : cmcset
--

ALTER TABLE cmcset ADD
  CONSTRAINT adlanguage_cmcstageeletrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmcset ADD
  CONSTRAINT cmcstageelement_cmcsetrl FOREIGN KEY (cm_cstage_element_id)
      REFERENCES cmcse (cm_cstage_element_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_cstage_trl : cmcst
--

ALTER TABLE cmcst ADD
  CONSTRAINT adlanguage_cmcstagetrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmcst ADD
  CONSTRAINT cmcstage_cmcstagetrl FOREIGN KEY (cm_cstage_id)
      REFERENCES cm_cstage (cm_cstage_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_cstagettable : cmcsttbl
--

ALTER TABLE cmcsttbl ADD
  CONSTRAINT cmstage_cmcstagettable FOREIGN KEY (cm_cstage_id)
      REFERENCES cm_cstage (cm_cstage_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmcsttbl ADD
  CONSTRAINT cmttable_cmstagettable FOREIGN KEY (cm_templatetable_id)
      REFERENCES cmtpltbl (cm_templatetable_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_media : cm_media
--

ALTER TABLE cm_media ADD
  CONSTRAINT adimage_cmmedia FOREIGN KEY (ad_image_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cm_media ADD
  CONSTRAINT cmwebproject_cmmedia FOREIGN KEY (cm_webproject_id)
      REFERENCES cmwprj (cm_webproject_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : cm_media_server : cmmdsrv
--

ALTER TABLE cmmdsrv ADD
  CONSTRAINT cmwebproject_cmmediaserver FOREIGN KEY (cm_webproject_id)
      REFERENCES cmwprj (cm_webproject_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_mediadeploy : cmmddpl
--

ALTER TABLE cmmddpl ADD
  CONSTRAINT cmmedia_cmmediadeploy FOREIGN KEY (cm_media_id)
      REFERENCES cm_media (cm_media_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmmddpl ADD
  CONSTRAINT cmmediaserver_cmmediadeploy FOREIGN KEY (cm_media_server_id)
      REFERENCES cmmdsrv (cm_media_server_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_newschannel : cmnchnl
--

ALTER TABLE cmnchnl ADD
  CONSTRAINT adlangu_cmnewschannel FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cmnchnl ADD
  CONSTRAINT cmwebproject_cmnewschannel FOREIGN KEY (cm_webproject_id)
      REFERENCES cmwprj (cm_webproject_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_newsitem : cmnitm
--

ALTER TABLE cmnitm ADD
  CONSTRAINT cmnewschannel_cmnewsitem FOREIGN KEY (cm_newschannel_id)
      REFERENCES cmnchnl (cm_newschannel_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_template : cmtpl
--

ALTER TABLE cmtpl ADD
  CONSTRAINT cmwebproject_cmtemplate FOREIGN KEY (cm_webproject_id)
      REFERENCES cmwprj (cm_webproject_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_template_ad_cat : cmtplacat
--

ALTER TABLE cmtplacat ADD
  CONSTRAINT cmadcat_cmtemplateadcat FOREIGN KEY (cm_ad_cat_id)
      REFERENCES cm_ad_cat (cm_ad_cat_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmtplacat ADD
  CONSTRAINT cmtemplate_cmtemplateadcat FOREIGN KEY (cm_template_id)
      REFERENCES cmtpl (cm_template_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_templatetable : cmtpltbl
--

ALTER TABLE cmtpltbl ADD
  CONSTRAINT adtable_cmtemplatetable FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cmtpltbl ADD
  CONSTRAINT cmtemplate_cmttable FOREIGN KEY (cm_template_id)
      REFERENCES cmtpl (cm_template_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_webaccesslog : cmwal
--

ALTER TABLE cmwal ADD
  CONSTRAINT aduser_cmwebaccesslog FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cmwal ADD
  CONSTRAINT cmbroadcastserver_cmwebalog FOREIGN KEY (cm_broadcastserver_id)
      REFERENCES cmbcsvr (cm_broadcastserver_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cmwal ADD
  CONSTRAINT cmmedia_cmwebaccesslog FOREIGN KEY (cm_media_id)
      REFERENCES cm_media (cm_media_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cmwal ADD
  CONSTRAINT cmwebproject_cmwebaccesslog FOREIGN KEY (cm_webproject_id)
      REFERENCES cmwprj (cm_webproject_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : cm_webproject : cmwprj
--

ALTER TABLE cmwprj ADD
  CONSTRAINT adtreecmc_cmwebproject FOREIGN KEY (ad_treecmc_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cmwprj ADD
  CONSTRAINT adtreecmm_cmwebproject FOREIGN KEY (ad_treecmm_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cmwprj ADD
  CONSTRAINT adtreecms_cmwebproject FOREIGN KEY (ad_treecms_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE cmwprj ADD
  CONSTRAINT adtreecmt_cmwebproject FOREIGN KEY (ad_treecmt_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : cm_webproject_domain : cmwprjdom
--

ALTER TABLE cmwprjdom ADD
  CONSTRAINT cmcontainer_cmwebprojectdomain FOREIGN KEY (cm_container_id)
      REFERENCES cmcnt (cm_container_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE cmwprjdom ADD
  CONSTRAINT cmwebproject_cmwpdomain FOREIGN KEY (cm_webproject_id)
      REFERENCES cmwprj (cm_webproject_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : cm_wikitoken : cmwtkn
--

ALTER TABLE cmwtkn ADD
  CONSTRAINT adtable_cmwikitoken FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_compartment : ddcpt
--

ALTER TABLE ddcpt ADD
  CONSTRAINT aasset_ddcompartment FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddcpt ADD
  CONSTRAINT ddcompatibilitygroup_ddcompart FOREIGN KEY (dd_compatibilitygroup_id)
      REFERENCES ddcptgrp (dd_compatibilitygroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddcpt ADD
  CONSTRAINT volumeuom_ddcompartment FOREIGN KEY (volume_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_compartmentassignment : ddcptasn
--

ALTER TABLE ddcptasn ADD
  CONSTRAINT ddcompartment_ddcompartmentass FOREIGN KEY (dd_compartment_id)
      REFERENCES ddcpt (dd_compartment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddcptasn ADD
  CONSTRAINT ddtransportunit_ddcompartmenta FOREIGN KEY (dd_transportunit_id)
      REFERENCES ddtptu (dd_transportunit_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_compatibilitygroup : ddcptgrp
--


--
-- Table : dd_driver : dd_driver
--

ALTER TABLE dd_driver ADD
  CONSTRAINT cbpartner_dddriver FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_driverassignment : dddrvasn
--

ALTER TABLE dddrvasn ADD
  CONSTRAINT dddriver_dddriverassignment FOREIGN KEY (dd_driver_id)
      REFERENCES dd_driver (dd_driver_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dddrvasn ADD
  CONSTRAINT ddvehicle_dddriverassignment FOREIGN KEY (dd_vehicle_id)
      REFERENCES dd_vehicle (dd_vehicle_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_freight : dd_freight
--

ALTER TABLE dd_freight ADD
  CONSTRAINT cbpartner_ddfreight FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_freight ADD
  CONSTRAINT cdoctype_ddfreight FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_freight ADD
  CONSTRAINT corder_ddfreight FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_freight ADD
  CONSTRAINT dddriver_ddfreight FOREIGN KEY (dd_driver_id)
      REFERENCES dd_driver (dd_driver_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_freight ADD
  CONSTRAINT ddorder_ddfreight FOREIGN KEY (dd_order_id)
      REFERENCES dd_order (dd_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_freight ADD
  CONSTRAINT ddvehicle_ddfreight FOREIGN KEY (dd_vehicle_id)
      REFERENCES dd_vehicle (dd_vehicle_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_freight ADD
  CONSTRAINT mfreightcategory_ddfreight FOREIGN KEY (m_freightcategory_id)
      REFERENCES mfhtcat (m_freightcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_freight ADD
  CONSTRAINT mshipper_ddfreight FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_freight ADD
  CONSTRAINT pporder_ddfreight FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_freight ADD
  CONSTRAINT wminoutbound_ddfreight FOREIGN KEY (wm_inoutbound_id)
      REFERENCES wmiobnd (wm_inoutbound_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_freightline : ddfghtln
--

ALTER TABLE ddfghtln ADD
  CONSTRAINT ccharge_ddfreightline FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddfghtln ADD
  CONSTRAINT clocfrom_ddfreightline FOREIGN KEY (c_locfrom_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddfghtln ADD
  CONSTRAINT clocto_ddfreightline FOREIGN KEY (c_locto_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddfghtln ADD
  CONSTRAINT ddfreight_ddfreightline FOREIGN KEY (dd_freight_id)
      REFERENCES dd_freight (dd_freight_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddfghtln ADD
  CONSTRAINT mfreight_ddfreightline FOREIGN KEY (m_freight_id)
      REFERENCES m_freight (m_freight_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddfghtln ADD
  CONSTRAINT mfreightcategory_ddfreightline FOREIGN KEY (m_freightcategory_id)
      REFERENCES mfhtcat (m_freightcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddfghtln ADD
  CONSTRAINT mproduct_ddfreightline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddfghtln ADD
  CONSTRAINT volumeuom_ddfreightline FOREIGN KEY (volume_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddfghtln ADD
  CONSTRAINT weightuom_ddfreightline FOREIGN KEY (weight_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_license : dd_license
--

ALTER TABLE dd_license ADD
  CONSTRAINT ddlicensetype_ddlicense FOREIGN KEY (dd_licensetype_id)
      REFERENCES ddlictyp (dd_licensetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_licenseassignment : ddlicasn
--

ALTER TABLE ddlicasn ADD
  CONSTRAINT dddriver_ddlicenseassignment FOREIGN KEY (dd_driver_id)
      REFERENCES dd_driver (dd_driver_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddlicasn ADD
  CONSTRAINT ddlicense_ddlicenseassignment FOREIGN KEY (dd_license_id)
      REFERENCES dd_license (dd_license_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddlicasn ADD
  CONSTRAINT ddvehicle_ddlicenseassignment FOREIGN KEY (dd_vehicle_id)
      REFERENCES dd_vehicle (dd_vehicle_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_licensetype : ddlictyp
--


--
-- Table : dd_networkdistribution : ddnwkdst
--

ALTER TABLE ddnwkdst ADD
  CONSTRAINT mchangenotice_ddnetworkdistrib FOREIGN KEY (m_changenotice_id)
      REFERENCES mchgntc (m_changenotice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_networkdistributionline : ddnwkdstl
--

ALTER TABLE ddnwkdstl ADD
  CONSTRAINT ddnetworkdistribution_ddnetwor FOREIGN KEY (dd_networkdistribution_id)
      REFERENCES ddnwkdst (dd_networkdistribution_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddnwkdstl ADD
  CONSTRAINT mshipper_ddnetworkdistribution FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddnwkdstl ADD
  CONSTRAINT mwarehouse_ddnetworkdistributi FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddnwkdstl ADD
  CONSTRAINT mwarehousesource_ddnetworkdist FOREIGN KEY (m_warehousesource_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_order : dd_order
--

ALTER TABLE dd_order ADD
  CONSTRAINT adorgtrx_ddorder FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT aduser_ddorder FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT cactivity_ddorder FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT cbpartner_ddorder FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT cbpartnerlocation_ddorder FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT ccampaign_ddorder FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT ccharge_ddorder FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT cdoctype_ddorder FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT cinvoice_ddorder FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT corder_ddorder FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT cproject_ddorder FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT mfreightcategory_ddorder FOREIGN KEY (m_freightcategory_id)
      REFERENCES mfhtcat (m_freightcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT mshipper_ddorder FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT mwarehouse_ddorder FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT reforder_ddorder FOREIGN KEY (ref_order_id)
      REFERENCES dd_order (dd_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT salesrep_ddorder FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT user1_ddorder FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT user2_ddorder FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT user3_ddorder FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_order ADD
  CONSTRAINT user4_ddorder FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_orderline : ddordln
--

ALTER TABLE ddordln ADD
  CONSTRAINT adorgtrx_ddorderline FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT cactivity_ddorderline FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT ccampaign_ddorderline FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT ccharge_ddorderline FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT cproject_ddorderline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT cprojectphase_ddorderline FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT cprojecttask_ddorderline FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT cuom_ddorderline FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT ddorder_ddorderline FOREIGN KEY (dd_order_id)
      REFERENCES dd_order (dd_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT mattributesetinstance_ddorderl FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT mattributesetinstanceto_ddorde FOREIGN KEY (m_attributesetinstanceto_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT mfreightcategory_ddorderline FOREIGN KEY (m_freightcategory_id)
      REFERENCES mfhtcat (m_freightcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT mlocator_ddorderline FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT mlocatorto_ddorderline FOREIGN KEY (m_locatorto_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT mproduct_ddorderline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT mshipper_ddorderline FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT user1_ddorderline FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT user2_ddorderline FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT user3_ddorderline FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT user4_ddorderline FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddordln ADD
  CONSTRAINT wminoutboundline_ddorderline FOREIGN KEY (wm_inoutboundline_id)
      REFERENCES wmiobndln (wm_inoutboundline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_requirement : ddreq
--

ALTER TABLE ddreq ADD
  CONSTRAINT ddrequirementtype_ddrequiremen FOREIGN KEY (dd_requirementtype_id)
      REFERENCES ddreqtyp (dd_requirementtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_requirementassignment : ddreqasn
--

ALTER TABLE ddreqasn ADD
  CONSTRAINT dddriver_ddrequirementassignme FOREIGN KEY (dd_driver_id)
      REFERENCES dd_driver (dd_driver_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddreqasn ADD
  CONSTRAINT ddrequirement_ddrequirementass FOREIGN KEY (dd_requirement_id)
      REFERENCES ddreq (dd_requirement_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddreqasn ADD
  CONSTRAINT ddvehicle_ddrequirementassignm FOREIGN KEY (dd_vehicle_id)
      REFERENCES dd_vehicle (dd_vehicle_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_requirementtype : ddreqtyp
--


--
-- Table : dd_transportassignment : ddtptasn
--

ALTER TABLE ddtptasn ADD
  CONSTRAINT ddtransportunit_ddtransportass FOREIGN KEY (dd_transportunit_id)
      REFERENCES ddtptu (dd_transportunit_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddtptasn ADD
  CONSTRAINT ddvehicle_ddtransportassignmen FOREIGN KEY (dd_vehicle_id)
      REFERENCES dd_vehicle (dd_vehicle_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_transportunit : ddtptu
--

ALTER TABLE ddtptu ADD
  CONSTRAINT aasset_ddtransportunit FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddtptu ADD
  CONSTRAINT ddcompatibilitygroup_ddtranspo FOREIGN KEY (dd_compatibilitygroup_id)
      REFERENCES ddcptgrp (dd_compatibilitygroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddtptu ADD
  CONSTRAINT ddtransportunittype_ddtranspor FOREIGN KEY (dd_transportunittype_id)
      REFERENCES ddtptutyp (dd_transportunittype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddtptu ADD
  CONSTRAINT dimensionuom_ddtransportunit FOREIGN KEY (dimension_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddtptu ADD
  CONSTRAINT volumeuom_ddtransportunit FOREIGN KEY (volume_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddtptu ADD
  CONSTRAINT weightuom_ddtransportunit FOREIGN KEY (weight_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_transportunittype : ddtptutyp
--

ALTER TABLE ddtptutyp ADD
  CONSTRAINT dimensionuom_ddtransportunitty FOREIGN KEY (dimension_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddtptutyp ADD
  CONSTRAINT volumeuom_ddtransportunittype FOREIGN KEY (volume_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddtptutyp ADD
  CONSTRAINT weightuom_ddtransportunittype FOREIGN KEY (weight_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_vehicle : dd_vehicle
--

ALTER TABLE dd_vehicle ADD
  CONSTRAINT aasset_ddvehicle FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_vehicle ADD
  CONSTRAINT ddcompatibilitygroup_ddvehicle FOREIGN KEY (dd_compatibilitygroup_id)
      REFERENCES ddcptgrp (dd_compatibilitygroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_vehicle ADD
  CONSTRAINT ddvehicletype_ddvehicle FOREIGN KEY (dd_vehicletype_id)
      REFERENCES ddvhctyp (dd_vehicletype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_vehicle ADD
  CONSTRAINT dimensionuom_ddvehicle FOREIGN KEY (dimension_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_vehicle ADD
  CONSTRAINT volumeuom_ddvehicle FOREIGN KEY (volume_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE dd_vehicle ADD
  CONSTRAINT weightuom_ddvehicle FOREIGN KEY (weight_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_vehicleassignment : ddvhcasn
--

ALTER TABLE ddvhcasn ADD
  CONSTRAINT ddvehicle_ddvehicleassignment FOREIGN KEY (dd_vehicle_id)
      REFERENCES dd_vehicle (dd_vehicle_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ddvhcasn ADD
  CONSTRAINT mshipper_ddvehicleassignment FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : dd_vehicletype : ddvhctyp
--


--
-- Table : exp_format : exp_format
--

ALTER TABLE exp_format ADD
  CONSTRAINT adtable_expformat FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : exp_formatline : expfmtln
--

ALTER TABLE expfmtln ADD
  CONSTRAINT adcolumn_expformatline FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE expfmtln ADD
  CONSTRAINT expembeddedformat_expformatlin FOREIGN KEY (exp_embeddedformat_id)
      REFERENCES exp_format (exp_format_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE expfmtln ADD
  CONSTRAINT expformat_expformatline FOREIGN KEY (exp_format_id)
      REFERENCES exp_format (exp_format_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : exp_processor : expprc
--

ALTER TABLE expprc ADD
  CONSTRAINT expprocessortype_expprocessor FOREIGN KEY (exp_processor_type_id)
      REFERENCES expprctyp (exp_processor_type_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : exp_processor_type : expprctyp
--


--
-- Table : exp_processorparameter : expprcpm
--

ALTER TABLE expprcpm ADD
  CONSTRAINT expprocessor_expprocessorparam FOREIGN KEY (exp_processor_id)
      REFERENCES expprc (exp_processor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : fact_acct : fact_acct
--

ALTER TABLE fact_acct ADD
  CONSTRAINT aasset_factacct FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT ac_client_fact_acct FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT ad_org_fact_acct FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT ad_orgtrx_fact_acct FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT adtable_factacct FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT c_buspartner_fact_acct FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT c_currency_fact_acct FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT c_locationfrom_fact_acct FOREIGN KEY (c_locfrom_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT c_locationto_fact_acct FOREIGN KEY (c_locto_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT c_project_fact_acct FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT c_salesregion_factacct FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT c_uom_fact_acct FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT cacctschema_factacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE fact_acct ADD
  CONSTRAINT cactivity_factacct FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT celementvalue_factacct FOREIGN KEY (account_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT celementvalueuser1_factacct FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT celementvalueuser2_factacct FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT cperiod_factacct FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT cprojectphase_factacct FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE fact_acct ADD
  CONSTRAINT cprojecttask_factacct FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE fact_acct ADD
  CONSTRAINT csubacct_factacct FOREIGN KEY (c_subacct_id)
      REFERENCES c_subacct (c_subacct_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT ctax_factacct FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT glbudget_factacct FOREIGN KEY (gl_budget_id)
      REFERENCES gl_budget (gl_budget_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT glcategory_factacct FOREIGN KEY (gl_category_id)
      REFERENCES glcat (gl_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT m_product_fact_acct FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT mlocator_factacct FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT so_campaign_fact_acct FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT user3_factacct FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE fact_acct ADD
  CONSTRAINT user4_factacct FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : fact_acct_summary : factacsm
--

ALTER TABLE factacsm ADD
  CONSTRAINT account_factacctsummary FOREIGN KEY (account_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT adorgtrx_factacctsummary FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT cacctschema_factacctsummary FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT cactivity_factacctsummary FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT cbpartner_factacctsummary FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT ccampaign_factacctsummary FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT clocfrom_factacctsummary FOREIGN KEY (c_locfrom_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT clocto_factacctsummary FOREIGN KEY (c_locto_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT cperiod_factacctsummary FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT cproject_factacctsummary FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT cprojectphase_factacctsummary FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT cprojecttask_factacctsummary FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT csalesregion_factacctsummary FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT csubacct_factacctsummary FOREIGN KEY (c_subacct_id)
      REFERENCES c_subacct (c_subacct_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT glbudget_factacctsummary FOREIGN KEY (gl_budget_id)
      REFERENCES gl_budget (gl_budget_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT mproduct_factacctsummary FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT pareportcube_factacctsummary FOREIGN KEY (pa_reportcube_id)
      REFERENCES parptcbe (pa_reportcube_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT user1_factacctsummary FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT user2_factacctsummary FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT user3_factacctsummary FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE factacsm ADD
  CONSTRAINT user4_factacctsummary FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : fact_reconciliation : tactrecn
--

ALTER TABLE tactrecn ADD
  CONSTRAINT factacct_factreconciliation FOREIGN KEY (fact_acct_id)
      REFERENCES fact_acct (fact_acct_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : gl_budget : gl_budget
--


--
-- Table : gl_budgetcontrol : glbgdctl
--

ALTER TABLE glbgdctl ADD
  CONSTRAINT cacctschema_glbudgetcontrol FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE glbgdctl ADD
  CONSTRAINT glbudget_glbudgetcontrol FOREIGN KEY (gl_budget_id)
      REFERENCES gl_budget (gl_budget_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : gl_category : glcat
--


--
-- Table : gl_distribution : gldst
--

ALTER TABLE gldst ADD
  CONSTRAINT adorg_gldist FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT adorgorg_gldist FOREIGN KEY (org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT adorgtrx_gldist FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT cacctschema_gldist FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT cactivity_gldist FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT cbpartner_gldist FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT ccampaign_gldist FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT cdoctype_gldistribution FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT cevalueacct_gldist FOREIGN KEY (account_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT cevalueuser1_gldist FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT cevalueuser2_gldist FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT clocfrom_gldist FOREIGN KEY (c_locfrom_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT clocto_gldist FOREIGN KEY (c_locto_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT cproject_gldist FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT csalesregopn_gldist FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT mproduct_gldist FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT user3_gldistribution FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldst ADD
  CONSTRAINT user4_gldistribution FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : gl_distributionline : gldstln
--

ALTER TABLE gldstln ADD
  CONSTRAINT adorg_gldistline FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT adorgorg_gldistline FOREIGN KEY (org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT adorgtrx_gldistline FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT cactivity_gldistline FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT cbpartner_gldistline FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT ccampaign_gldistline FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT cevalueacct_gldistline FOREIGN KEY (account_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT cevalueuser1_gldistline FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT cevalueuser2_gldistline FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT clocfrom_gldistline FOREIGN KEY (c_locfrom_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT clocto_gldistline FOREIGN KEY (c_locto_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT cproject_gldistline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT csalesregion_gldistline FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT gldistribution_gldistline FOREIGN KEY (gl_distribution_id)
      REFERENCES gldst (gl_distribution_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE gldstln ADD
  CONSTRAINT mproduct_gldistline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT user3_gldistributionline FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gldstln ADD
  CONSTRAINT user4_gldistributionline FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : gl_fund : gl_fund
--

ALTER TABLE gl_fund ADD
  CONSTRAINT cacctschema_glfund FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : gl_fundrestriction : glfndrst
--

ALTER TABLE glfndrst ADD
  CONSTRAINT celementvalue_glfundrestr FOREIGN KEY (c_elementvalue_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE glfndrst ADD
  CONSTRAINT glfund_glfundrestriction FOREIGN KEY (gl_fund_id)
      REFERENCES gl_fund (gl_fund_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : gl_journal : gl_journal
--

ALTER TABLE gl_journal ADD
  CONSTRAINT c_acctschema_gl_journal FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gl_journal ADD
  CONSTRAINT c_period_journal FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gl_journal ADD
  CONSTRAINT cconversiontype_gljournal FOREIGN KEY (c_conversiontype_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gl_journal ADD
  CONSTRAINT ccurrency_gljournal FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gl_journal ADD
  CONSTRAINT cdoctype_gljournal FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gl_journal ADD
  CONSTRAINT glbudget_gljournal FOREIGN KEY (gl_budget_id)
      REFERENCES gl_budget (gl_budget_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gl_journal ADD
  CONSTRAINT glcategory_gljournal FOREIGN KEY (gl_category_id)
      REFERENCES glcat (gl_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gl_journal ADD
  CONSTRAINT gljournalbatch_gljournal FOREIGN KEY (gl_journalbatch_id)
      REFERENCES gljrnbch (gl_journalbatch_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE gl_journal ADD
  CONSTRAINT reversal_gljournal FOREIGN KEY (reversal_id)
      REFERENCES gl_journal (gl_journal_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : gl_journalbatch : gljrnbch
--

ALTER TABLE gljrnbch ADD
  CONSTRAINT c_period_journalbatch FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnbch ADD
  CONSTRAINT ccurrency_gljournalbatch FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnbch ADD
  CONSTRAINT cdoctype_gljournalbatch FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnbch ADD
  CONSTRAINT glcategory_gljournalbatch FOREIGN KEY (gl_category_id)
      REFERENCES glcat (gl_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnbch ADD
  CONSTRAINT reversal_gljournalbatch FOREIGN KEY (reversal_id)
      REFERENCES gljrnbch (gl_journalbatch_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : gl_journalline : gljrnln
--

ALTER TABLE gljrnln ADD
  CONSTRAINT aasset_gljournalline FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT aassetgroup_gljournalline FOREIGN KEY (a_asset_group_id)
      REFERENCES aasstgrp (a_asset_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT account_gljournalline FOREIGN KEY (account_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT adclient_gljournalline FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT adorg_gljournalline FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT adorgtrx_gljournalline FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT aliasvalidcombination_gljourna FOREIGN KEY (alias_validcombination_id)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT cactivity_gljournalline FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT cbpartner_gljournalline FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT ccampaign_gljournalline FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT cconversiontype_gljournalline FOREIGN KEY (c_conversiontype_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT ccurrency_gljournalline FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT clocfrom_gljournalline FOREIGN KEY (c_locfrom_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT clocto_gljournalline FOREIGN KEY (c_locto_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT cproject_gljournalline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT csalesregion_gljournalline FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT csubacct_gljournalline FOREIGN KEY (c_subacct_id)
      REFERENCES c_subacct (c_subacct_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT cuom_gljournalline FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT cvc_gljournalline FOREIGN KEY (c_validcombination_id)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT gljournal_gljournalline FOREIGN KEY (gl_journal_id)
      REFERENCES gl_journal (gl_journal_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE gljrnln ADD
  CONSTRAINT mproduct_gljournalline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT reversalline_gljournalline FOREIGN KEY (reversalline_id)
      REFERENCES gljrnln (gl_journalline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT user1_gljournalline FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT user2_gljournalline FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT user3_gljournalline FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE gljrnln ADD
  CONSTRAINT user4_gljournalline FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_attribute : hratr
--

ALTER TABLE hratr ADD
  CONSTRAINT adorgtrx_hrattribute FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT adrule_hrattribute FOREIGN KEY (ad_rule_id)
      REFERENCES ad_rule (ad_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT cactivity_hrattribute FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT cbpartner_hrattribute FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT cbprelation_hrattribute FOREIGN KEY (c_bp_relation_id)
      REFERENCES cbprel (c_bp_relation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT ccampaign_hrattribute FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT ccharge_hrattribute FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT cdoctype_hrattribute FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT cinvoice_hrattribute FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT cproject_hrattribute FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrattribute_hrattribute FOREIGN KEY (hr_attribute_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrcareerlevel_hrattribute FOREIGN KEY (hr_careerlevel_id)
      REFERENCES hrcarlvl (hr_careerlevel_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrconcept_hrattribute FOREIGN KEY (hr_concept_id)
      REFERENCES hr_concept (hr_concept_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrcontract_hrattribute FOREIGN KEY (hr_contract_id)
      REFERENCES hrctrt (hr_contract_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrdegree_hrattribute FOREIGN KEY (hr_degree_id)
      REFERENCES hr_degree (hr_degree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrdepartment_hrattribute FOREIGN KEY (hr_department_id)
      REFERENCES hrdept (hr_department_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrdesignation_hrattribute FOREIGN KEY (hr_designation_id)
      REFERENCES hrdsgn (hr_designation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hremployee_hrattribute FOREIGN KEY (hr_employee_id)
      REFERENCES hremp (hr_employee_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hremployeetype_hrattribute FOREIGN KEY (hr_employeetype_id)
      REFERENCES hremptyp (hr_employeetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrgrade_hrattribute FOREIGN KEY (hr_grade_id)
      REFERENCES hr_grade (hr_grade_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrjob_hrattribute FOREIGN KEY (hr_job_id)
      REFERENCES hr_job (hr_job_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrjobeducation_hrattribute FOREIGN KEY (hr_jobeducation_id)
      REFERENCES hrjobedu (hr_jobeducation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrjobtype_hrattribute FOREIGN KEY (hr_jobtype_id)
      REFERENCES hr_jobtype (hr_jobtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrpayroll_hrattribute FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrrace_hrattribute FOREIGN KEY (hr_race_id)
      REFERENCES hr_race (hr_race_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrsalaryrange_hrattribute FOREIGN KEY (hr_salaryrange_id)
      REFERENCES hrsalrng (hr_salaryrange_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrsalarystructure_hrattribute FOREIGN KEY (hr_salarystructure_id)
      REFERENCES hrsalstr (hr_salarystructure_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrshiftgroup_hrattribute FOREIGN KEY (hr_shiftgroup_id)
      REFERENCES hrsftgrp (hr_shiftgroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrskilltype_hrattribute FOREIGN KEY (hr_skilltype_id)
      REFERENCES hrskltyp (hr_skilltype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hratr ADD
  CONSTRAINT hrworkgroup_hrattribute FOREIGN KEY (hr_workgroup_id)
      REFERENCES hrwgrp (hr_workgroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_careerlevel : hrcarlvl
--


--
-- Table : hr_concept : hr_concept
--

ALTER TABLE hr_concept ADD
  CONSTRAINT adreference_hrconcept FOREIGN KEY (ad_reference_id)
      REFERENCES adref (ad_reference_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_concept ADD
  CONSTRAINT hrconceptcategory_hrconcept FOREIGN KEY (hr_concept_category_id)
      REFERENCES hrcctcat (hr_concept_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_concept ADD
  CONSTRAINT hrconcepttype_hrconcept FOREIGN KEY (hr_concept_type_id)
      REFERENCES hrccttyp (hr_concept_type_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_concept ADD
  CONSTRAINT hrdepartment_hrconcept FOREIGN KEY (hr_department_id)
      REFERENCES hrdept (hr_department_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_concept ADD
  CONSTRAINT hrjob_hrconcept FOREIGN KEY (hr_job_id)
      REFERENCES hr_job (hr_job_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_concept ADD
  CONSTRAINT hrpayroll_hrconcept FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_concept_acct : hrcctact
--

ALTER TABLE hrcctact ADD
  CONSTRAINT cacctschema_hrconceptacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrcctact ADD
  CONSTRAINT cbpgroup_hrconceptacct FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrcctact ADD
  CONSTRAINT hrconcept_hrconceptacct FOREIGN KEY (hr_concept_id)
      REFERENCES hr_concept (hr_concept_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrcctact ADD
  CONSTRAINT hrexpense_hrconceptacct FOREIGN KEY (hr_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrcctact ADD
  CONSTRAINT hrpayroll_hrconceptacct FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrcctact ADD
  CONSTRAINT hrrevenue_hrconceptacct FOREIGN KEY (hr_revenue_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrcctact ADD
  CONSTRAINT use_hrconceptacct FOREIGN KEY (user2_id)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrcctact ADD
  CONSTRAINT user1_hrconceptacct FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrcctact ADD
  CONSTRAINT user3_hrconceptacct FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrcctact ADD
  CONSTRAINT user4_hrconceptacct FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_concept_category : hrcctcat
--

ALTER TABLE hrcctcat ADD
  CONSTRAINT hrconcept_hrconceptcategory FOREIGN KEY (hr_concept_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_concept_type : hrccttyp
--


--
-- Table : hr_contract : hrctrt
--

ALTER TABLE hrctrt ADD
  CONSTRAINT cbpartner_hrcontract FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrctrt ADD
  CONSTRAINT ccampaign_hrcontract FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrctrt ADD
  CONSTRAINT cproject_hrcontract FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrctrt ADD
  CONSTRAINT dailysalary_hrcontract FOREIGN KEY (dailysalary_id)
      REFERENCES hr_concept (hr_concept_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrctrt ADD
  CONSTRAINT monthlysalary_hrcontract FOREIGN KEY (monthlysalary_id)
      REFERENCES hr_concept (hr_concept_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_degree : hr_degree
--


--
-- Table : hr_department : hrdept
--

ALTER TABLE hrdept ADD
  CONSTRAINT cactivity_hrdepartment FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrdept ADD
  CONSTRAINT cbpartner_hrdepartment FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_departmentproduct : hrdeptprd
--

ALTER TABLE hrdeptprd ADD
  CONSTRAINT hrdepartment_hrdepartmentprodu FOREIGN KEY (hr_department_id)
      REFERENCES hrdept (hr_department_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrdeptprd ADD
  CONSTRAINT mproduct_hrdepartmentproduct FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_designation : hrdsgn
--

ALTER TABLE hrdsgn ADD
  CONSTRAINT hremployeetype_hrdesignation FOREIGN KEY (hr_employeetype_id)
      REFERENCES hremptyp (hr_employeetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrdsgn ADD
  CONSTRAINT hrpayroll_hrdesignation FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrdsgn ADD
  CONSTRAINT hrsalarystructure_hrdesignatio FOREIGN KEY (hr_salarystructure_id)
      REFERENCES hrsalstr (hr_salarystructure_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_education : hredu
--

ALTER TABLE hredu ADD
  CONSTRAINT cbpartner_hreducation FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hredu ADD
  CONSTRAINT hrdegree_hreducation FOREIGN KEY (hr_degree_id)
      REFERENCES hr_degree (hr_degree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hredu ADD
  CONSTRAINT hremployee_hreducation FOREIGN KEY (hr_employee_id)
      REFERENCES hremp (hr_employee_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_employee : hremp
--

ALTER TABLE hremp ADD
  CONSTRAINT adorgtrx_hremployee FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT aduser_hremployee FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT cactivity_hremployee FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT cbpartner_hremployee FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT ccampaign_hremployee FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT cproject_hremployee FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT csalesregion_hremployee FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrcareerlevel_hremployee FOREIGN KEY (hr_careerlevel_id)
      REFERENCES hrcarlvl (hr_careerlevel_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrdegree_hremployee FOREIGN KEY (hr_degree_id)
      REFERENCES hr_degree (hr_degree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrdepartment_hremployee FOREIGN KEY (hr_department_id)
      REFERENCES hrdept (hr_department_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrdesignation_hremployee FOREIGN KEY (hr_designation_id)
      REFERENCES hrdsgn (hr_designation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hremployeetype_hremployee FOREIGN KEY (hr_employeetype_id)
      REFERENCES hremptyp (hr_employeetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrgrade_hremployee FOREIGN KEY (hr_grade_id)
      REFERENCES hr_grade (hr_grade_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrjob_hremployee FOREIGN KEY (hr_job_id)
      REFERENCES hr_job (hr_job_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrjobeducation_hremployee FOREIGN KEY (hr_jobeducation_id)
      REFERENCES hrjobedu (hr_jobeducation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrjobopening_hremployee FOREIGN KEY (hr_jobopening_id)
      REFERENCES hrjobopn (hr_jobopening_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrjobtype_hremployee FOREIGN KEY (hr_jobtype_id)
      REFERENCES hr_jobtype (hr_jobtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrpayroll_hremployee FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrrace_hremployee FOREIGN KEY (hr_race_id)
      REFERENCES hr_race (hr_race_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrsalaryrange_hremployee FOREIGN KEY (hr_salaryrange_id)
      REFERENCES hrsalrng (hr_salaryrange_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrsalarystructure_hremployee FOREIGN KEY (hr_salarystructure_id)
      REFERENCES hrsalstr (hr_salarystructure_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrshiftgroup_hremployee FOREIGN KEY (hr_shiftgroup_id)
      REFERENCES hrsftgrp (hr_shiftgroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrskilltype_hremployee FOREIGN KEY (hr_skilltype_id)
      REFERENCES hrskltyp (hr_skilltype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT hrworkgroup_hremployee FOREIGN KEY (hr_workgroup_id)
      REFERENCES hrwgrp (hr_workgroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hremp ADD
  CONSTRAINT nationality_hremployee FOREIGN KEY (nationality_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_employeedependent : hrempdpd
--

ALTER TABLE hrempdpd ADD
  CONSTRAINT cbpartner_hremployeedependent FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrempdpd ADD
  CONSTRAINT cbpartnerrelation_hremployeede FOREIGN KEY (c_bpartnerrelation_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrempdpd ADD
  CONSTRAINT hrcareerlevel_hremployeedepend FOREIGN KEY (hr_careerlevel_id)
      REFERENCES hrcarlvl (hr_careerlevel_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrempdpd ADD
  CONSTRAINT hrdegree_hremployeedependent FOREIGN KEY (hr_degree_id)
      REFERENCES hr_degree (hr_degree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrempdpd ADD
  CONSTRAINT hremployee_hremployeedependent FOREIGN KEY (hr_employee_id)
      REFERENCES hremp (hr_employee_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrempdpd ADD
  CONSTRAINT hrgrade_hremployeedependent FOREIGN KEY (hr_grade_id)
      REFERENCES hr_grade (hr_grade_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrempdpd ADD
  CONSTRAINT hrrace_hremployeedependent FOREIGN KEY (hr_race_id)
      REFERENCES hr_race (hr_race_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrempdpd ADD
  CONSTRAINT hrrelationship_hremployeedepen FOREIGN KEY (hr_relationship_id)
      REFERENCES hrrel (hr_relationship_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_employeeexperience : hrempex
--

ALTER TABLE hrempex ADD
  CONSTRAINT cbpartner_hremployeeexperience FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrempex ADD
  CONSTRAINT hremployee_hremployeeexperienc FOREIGN KEY (hr_employee_id)
      REFERENCES hremp (hr_employee_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_employeeinsurance : hrempins
--

ALTER TABLE hrempins ADD
  CONSTRAINT cbpartner_hremployeeinsurance FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrempins ADD
  CONSTRAINT hremployee_hremployeeinsurance FOREIGN KEY (hr_employee_id)
      REFERENCES hremp (hr_employee_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrempins ADD
  CONSTRAINT hrinsurancetype_hremployeeinsu FOREIGN KEY (hr_insurancetype_id)
      REFERENCES hrinstyp (hr_insurancetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrempins ADD
  CONSTRAINT hrperiod_hremployeeinsurance FOREIGN KEY (hr_period_id)
      REFERENCES hr_period (hr_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_employeetype : hremptyp
--

ALTER TABLE hremptyp ADD
  CONSTRAINT hrpayroll_hremployeetype FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_employeeweeklyoff : hrempwko
--

ALTER TABLE hrempwko ADD
  CONSTRAINT cbpartner_hremployeeweeklyoff FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrempwko ADD
  CONSTRAINT hremployee_hremployeeweeklyoff FOREIGN KEY (hr_employee_id)
      REFERENCES hremp (hr_employee_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_grade : hr_grade
--


--
-- Table : hr_insurancetype : hrinstyp
--


--
-- Table : hr_interview : hrintvw
--

ALTER TABLE hrintvw ADD
  CONSTRAINT cbpartner_hrinterview FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrintvw ADD
  CONSTRAINT hrjobapplication_hrinterview FOREIGN KEY (hr_jobapplication_id)
      REFERENCES hrjobapp (hr_jobapplication_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_job : hr_job
--

ALTER TABLE hr_job ADD
  CONSTRAINT hrdepartment_hrjob FOREIGN KEY (hr_department_id)
      REFERENCES hrdept (hr_department_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_job ADD
  CONSTRAINT nextjob_hrjob FOREIGN KEY (next_job_id)
      REFERENCES hr_job (hr_job_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_job ADD
  CONSTRAINT supervisor_hrjob FOREIGN KEY (supervisor_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_jobapplication : hrjobapp
--

ALTER TABLE hrjobapp ADD
  CONSTRAINT cbpartner_hrjobapplication FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobapp ADD
  CONSTRAINT hrdesignation_hrjobapplication FOREIGN KEY (hr_designation_id)
      REFERENCES hrdsgn (hr_designation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobapp ADD
  CONSTRAINT hrjobopening_hrjobapplication FOREIGN KEY (hr_jobopening_id)
      REFERENCES hrjobopn (hr_jobopening_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobapp ADD
  CONSTRAINT recruitedemployee_hrjobapplica FOREIGN KEY (recruitedemployee_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobapp ADD
  CONSTRAINT refbpartner_hrjobapplication FOREIGN KEY (ref_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_jobapplicationhistory : hrjobapph
--

ALTER TABLE hrjobapph ADD
  CONSTRAINT hrjobapplication_hrjobapplicat FOREIGN KEY (hr_jobapplication_id)
      REFERENCES hrjobapp (hr_jobapplication_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_jobeducation : hrjobedu
--


--
-- Table : hr_jobopening : hrjobopn
--

ALTER TABLE hrjobopn ADD
  CONSTRAINT aduser_hrjobopening FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobopn ADD
  CONSTRAINT cdoctype_hrjobopening FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobopn ADD
  CONSTRAINT hrcareerlevel_hrjobopening FOREIGN KEY (hr_careerlevel_id)
      REFERENCES hrcarlvl (hr_careerlevel_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobopn ADD
  CONSTRAINT hrdepartment_hrjobopening FOREIGN KEY (hr_department_id)
      REFERENCES hrdept (hr_department_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobopn ADD
  CONSTRAINT hrdesignation_hrjobopening FOREIGN KEY (hr_designation_id)
      REFERENCES hrdsgn (hr_designation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobopn ADD
  CONSTRAINT hrjobeducation_hrjobopening FOREIGN KEY (hr_jobeducation_id)
      REFERENCES hrjobedu (hr_jobeducation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobopn ADD
  CONSTRAINT hrjobopening_hrjobopening FOREIGN KEY (hr_jobopening_id)
      REFERENCES hrjobopn (hr_jobopening_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobopn ADD
  CONSTRAINT hrjobtype_hrjobopening FOREIGN KEY (hr_jobtype_id)
      REFERENCES hr_jobtype (hr_jobtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobopn ADD
  CONSTRAINT hrsalaryrange_hrjobopening FOREIGN KEY (hr_salaryrange_id)
      REFERENCES hrsalrng (hr_salaryrange_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobopn ADD
  CONSTRAINT supervisor_hrjobopening FOREIGN KEY (supervisor_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_jobopeninghistory : hrjobopnh
--

ALTER TABLE hrjobopnh ADD
  CONSTRAINT aduser_hrjobopeninghistory FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrjobopnh ADD
  CONSTRAINT hrjobopening_hrjobopeninghisto FOREIGN KEY (hr_jobopening_id)
      REFERENCES hrjobopn (hr_jobopening_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_jobtype : hr_jobtype
--


--
-- Table : hr_leaveassign : hrlasn
--

ALTER TABLE hrlasn ADD
  CONSTRAINT cbpartner_hrleaveassign FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrlasn ADD
  CONSTRAINT cyear_hrleaveassign FOREIGN KEY (c_year_id)
      REFERENCES c_year (c_year_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrlasn ADD
  CONSTRAINT hremployee_hrleaveassign FOREIGN KEY (hr_employee_id)
      REFERENCES hremp (hr_employee_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrlasn ADD
  CONSTRAINT hrleavetype_hrleaveassign FOREIGN KEY (hr_leavetype_id)
      REFERENCES hrltype (hr_leavetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_leavecredithistory : hrlcredh
--

ALTER TABLE hrlcredh ADD
  CONSTRAINT cbpartner_hrleavecredithistory FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrlcredh ADD
  CONSTRAINT cyear_hrleavecredithistory FOREIGN KEY (c_year_id)
      REFERENCES c_year (c_year_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrlcredh ADD
  CONSTRAINT hremployee_hrleavecredithistor FOREIGN KEY (hr_employee_id)
      REFERENCES hremp (hr_employee_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrlcredh ADD
  CONSTRAINT hrleaveassign_hrleavecredithis FOREIGN KEY (hr_leaveassign_id)
      REFERENCES hrlasn (hr_leaveassign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrlcredh ADD
  CONSTRAINT hrleavereason_hrleavecredithis FOREIGN KEY (hr_leavereason_id)
      REFERENCES hrlrsn (hr_leavereason_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrlcredh ADD
  CONSTRAINT hrleavetype_hrleavecredithisto FOREIGN KEY (hr_leavetype_id)
      REFERENCES hrltype (hr_leavetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_leavereason : hrlrsn
--


--
-- Table : hr_leavetype : hrltype
--


--
-- Table : hr_leavetypecombination : hrltypcbm
--

ALTER TABLE hrltypcbm ADD
  CONSTRAINT allowedleavetype_hrleavetypeco FOREIGN KEY (allowedleavetype_id)
      REFERENCES hrltype (hr_leavetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrltypcbm ADD
  CONSTRAINT hrleavetype_hrleavetypecombina FOREIGN KEY (hr_leavetype_id)
      REFERENCES hrltype (hr_leavetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_leavetypeemployeetype : hrltypetyp
--

ALTER TABLE hrltypetyp ADD
  CONSTRAINT hremployeetype_hrleavetypeempl FOREIGN KEY (hr_employeetype_id)
      REFERENCES hremptyp (hr_employeetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrltypetyp ADD
  CONSTRAINT hrleavetype_hrleavetypeemploye FOREIGN KEY (hr_leavetype_id)
      REFERENCES hrltype (hr_leavetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_list : hr_list
--

ALTER TABLE hr_list ADD
  CONSTRAINT hrdepartment_hrlist FOREIGN KEY (hr_department_id)
      REFERENCES hrdept (hr_department_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_list ADD
  CONSTRAINT hremployee_hrlist FOREIGN KEY (hr_employee_id)
      REFERENCES hremp (hr_employee_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_list ADD
  CONSTRAINT hrlisttype_hrlist FOREIGN KEY (hr_listtype_id)
      REFERENCES hrlsttyp (hr_listtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_list ADD
  CONSTRAINT hrpayroll_hrlist FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_listline : hrlstln
--

ALTER TABLE hrlstln ADD
  CONSTRAINT hrlistversion_hrlistline FOREIGN KEY (hr_listversion_id)
      REFERENCES hrlstver (hr_listversion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_listtype : hrlsttyp
--


--
-- Table : hr_listversion : hrlstver
--

ALTER TABLE hrlstver ADD
  CONSTRAINT hrlist_hrlistversion FOREIGN KEY (hr_list_id)
      REFERENCES hr_list (hr_list_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrlstver ADD
  CONSTRAINT hrlistbase_hrlistversion FOREIGN KEY (hr_listbase_id)
      REFERENCES hr_list (hr_list_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_movement : hrmvt
--

ALTER TABLE hrmvt ADD
  CONSTRAINT adorgtrx_hrmovement FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT adrule_hrmovement FOREIGN KEY (ad_rule_id)
      REFERENCES ad_rule (ad_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT cactivity_hrmovement FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT cbpartner_hrmovement FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT cbpbankaccount_hrmovement FOREIGN KEY (c_bp_bankaccount_id)
      REFERENCES cbpbacct (c_bp_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT cbpgroup_hrmovement FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT cbprelation_hrmovement FOREIGN KEY (c_bp_relation_id)
      REFERENCES cbprel (c_bp_relation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT ccampaign_hrmovement FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT cinvoiceline_hrmovement FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT cproject_hrmovement FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT cprojectphase_hrmovement FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT cprojecttask_hrmovement FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT csalesregion_hrmovement FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hrattribute_hrmovement FOREIGN KEY (hr_attribute_id)
      REFERENCES hratr (hr_attribute_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hrconcept_hrmovement FOREIGN KEY (hr_concept_id)
      REFERENCES hr_concept (hr_concept_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hrconceptcategory_hrmovement FOREIGN KEY (hr_concept_category_id)
      REFERENCES hrcctcat (hr_concept_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hrcontract_hrmovement FOREIGN KEY (hr_contract_id)
      REFERENCES hrctrt (hr_contract_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hrdepartment_hrmovement FOREIGN KEY (hr_department_id)
      REFERENCES hrdept (hr_department_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hrdesignation_hrmovement FOREIGN KEY (hr_designation_id)
      REFERENCES hrdsgn (hr_designation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hremployee_hrmovement FOREIGN KEY (hr_employee_id)
      REFERENCES hremp (hr_employee_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hremployeetype_hrmovement FOREIGN KEY (hr_employeetype_id)
      REFERENCES hremptyp (hr_employeetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hrjob_hrmovement FOREIGN KEY (hr_job_id)
      REFERENCES hr_job (hr_job_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hrjobtype_hrmovement FOREIGN KEY (hr_jobtype_id)
      REFERENCES hr_jobtype (hr_jobtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hrpayroll_hrmovement FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hrpayrollconcept_hrmovement FOREIGN KEY (hr_payrollconcept_id)
      REFERENCES hrpaycpt (hr_payrollconcept_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hrprocess_hrmovement FOREIGN KEY (hr_process_id)
      REFERENCES hr_process (hr_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT hrskilltype_hrmovement FOREIGN KEY (hr_skilltype_id)
      REFERENCES hrskltyp (hr_skilltype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT ppcostcollector_hrmovement FOREIGN KEY (pp_cost_collector_id)
      REFERENCES ppcstcol (pp_cost_collector_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT reversalline_hrmovement FOREIGN KEY (reversalline_id)
      REFERENCES hrmvt (hr_movement_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT user1_hrmovement FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT user2_hrmovement FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT user3_hrmovement FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrmvt ADD
  CONSTRAINT user4_hrmovement FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_payroll : hr_payroll
--

ALTER TABLE hr_payroll ADD
  CONSTRAINT adprintformat_hrpayroll FOREIGN KEY (ad_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_payroll ADD
  CONSTRAINT ccharge_hrpayroll FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_payroll ADD
  CONSTRAINT hrcontract_hrpayroll FOREIGN KEY (hr_contract_id)
      REFERENCES hrctrt (hr_contract_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_payrollconcept : hrpaycpt
--

ALTER TABLE hrpaycpt ADD
  CONSTRAINT adrule_hrpayrollconcept FOREIGN KEY (ad_rule_id)
      REFERENCES ad_rule (ad_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrpaycpt ADD
  CONSTRAINT hrconcept_hrpayrollconcept FOREIGN KEY (hr_concept_id)
      REFERENCES hr_concept (hr_concept_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrpaycpt ADD
  CONSTRAINT hrpayroll_hrpayrollconcept FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_payselection : hrpaysel
--

ALTER TABLE hrpaysel ADD
  CONSTRAINT cbankaccount_hrpayselection FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrpaysel ADD
  CONSTRAINT hrprocess_hrpayselection FOREIGN KEY (hr_process_id)
      REFERENCES hr_process (hr_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_payselectioncheck : hrpayselc
--

ALTER TABLE hrpayselc ADD
  CONSTRAINT cbpartner_hrpayselectioncheck FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrpayselc ADD
  CONSTRAINT cbpbankaccount_hrpayselectionc FOREIGN KEY (c_bp_bankaccount_id)
      REFERENCES cbpbacct (c_bp_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrpayselc ADD
  CONSTRAINT cpayment_hrpayselectioncheck FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrpayselc ADD
  CONSTRAINT hrpayselection_hrpayselectionc FOREIGN KEY (hr_payselection_id)
      REFERENCES hrpaysel (hr_payselection_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_payselectionline : hrpayselln
--

ALTER TABLE hrpayselln ADD
  CONSTRAINT hrmovement_hrpayselectionline FOREIGN KEY (hr_movement_id)
      REFERENCES hrmvt (hr_movement_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrpayselln ADD
  CONSTRAINT hrpayselection_hrpayselectionl FOREIGN KEY (hr_payselection_id)
      REFERENCES hrpaysel (hr_payselection_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrpayselln ADD
  CONSTRAINT hrpayselectioncheck_hrpayselec FOREIGN KEY (hr_payselectioncheck_id)
      REFERENCES hrpayselc (hr_payselectioncheck_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_period : hr_period
--

ALTER TABLE hr_period ADD
  CONSTRAINT cperiod_hrperiod FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_period ADD
  CONSTRAINT cyear_hrperiod FOREIGN KEY (c_year_id)
      REFERENCES c_year (c_year_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_period ADD
  CONSTRAINT hrpayroll_hrperiod FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_period ADD
  CONSTRAINT hryear_hrperiod FOREIGN KEY (hr_year_id)
      REFERENCES hr_year (hr_year_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_process : hr_process
--

ALTER TABLE hr_process ADD
  CONSTRAINT adprintformat_hrprocess FOREIGN KEY (ad_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_process ADD
  CONSTRAINT adworkflow_hrprocess FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_process ADD
  CONSTRAINT cbpartner_hrprocess FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_process ADD
  CONSTRAINT ccharge_hrprocess FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_process ADD
  CONSTRAINT cdoctype_hrprocess FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_process ADD
  CONSTRAINT cdoctypetarget_hrprocess FOREIGN KEY (c_doctypetarget_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_process ADD
  CONSTRAINT cpayselection_hrprocess FOREIGN KEY (c_payselection_id)
      REFERENCES cpaysel (c_payselection_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_process ADD
  CONSTRAINT hrdepartment_hrprocess FOREIGN KEY (hr_department_id)
      REFERENCES hrdept (hr_department_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_process ADD
  CONSTRAINT hremployee_hrprocess FOREIGN KEY (hr_employee_id)
      REFERENCES hremp (hr_employee_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_process ADD
  CONSTRAINT hrjob_hrprocess FOREIGN KEY (hr_job_id)
      REFERENCES hr_job (hr_job_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_process ADD
  CONSTRAINT hrpayroll_hrprocess FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_process ADD
  CONSTRAINT hrperiod_hrprocess FOREIGN KEY (hr_period_id)
      REFERENCES hr_period (hr_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_process ADD
  CONSTRAINT reversal_hrprocess FOREIGN KEY (reversal_id)
      REFERENCES hr_process (hr_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_processreport : hrprcrpt
--

ALTER TABLE hrprcrpt ADD
  CONSTRAINT adprintformat_hrprocessreport FOREIGN KEY (ad_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_processreportline : hrprcrptln
--

ALTER TABLE hrprcrptln ADD
  CONSTRAINT hrconcept_hrprocessreportline FOREIGN KEY (hr_concept_id)
      REFERENCES hr_concept (hr_concept_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrprcrptln ADD
  CONSTRAINT hrprocessreport_hrprocessreportline FOREIGN KEY (hr_processreport_id)
      REFERENCES hrprcrpt (hr_processreport_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_processreportpayroll : hrprcrptp
--

ALTER TABLE hrprcrptp ADD
  CONSTRAINT hrpayroll_hrprocessreportpayroll FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrprcrptp ADD
  CONSTRAINT hrprocessreport_hrprocessreportpayroll FOREIGN KEY (hr_processreport_id)
      REFERENCES hrprcrpt (hr_processreport_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_processreportsource : hrprcrpts
--

ALTER TABLE hrprcrpts ADD
  CONSTRAINT hrconcept_hrprocessreportsource FOREIGN KEY (hr_concept_id)
      REFERENCES hr_concept (hr_concept_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrprcrpts ADD
  CONSTRAINT hrprocessreportline_hrprocesssource FOREIGN KEY (hr_processreportline_id)
      REFERENCES hrprcrptln (hr_processreportline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_processreporttemplate : hrprcrpttp
--

ALTER TABLE hrprcrpttp ADD
  CONSTRAINT adprintformat_hrprocessreporttemplete FOREIGN KEY (ad_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrprcrpttp ADD
  CONSTRAINT hrprocessreport_hrprocessreporttemplete FOREIGN KEY (hr_processreport_id)
      REFERENCES hrprcrpt (hr_processreport_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_race : hr_race
--


--
-- Table : hr_relationship : hrrel
--


--
-- Table : hr_salaryrange : hrsalrng
--


--
-- Table : hr_salarystructure : hrsalstr
--

ALTER TABLE hrsalstr ADD
  CONSTRAINT hrsalarystructure_hrsalarystru FOREIGN KEY (hr_salarystructure_id)
      REFERENCES hrsalstr (hr_salarystructure_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_salarystructureline : hrsalstrln
--

ALTER TABLE hrsalstrln ADD
  CONSTRAINT hrconcept_hrsalarystructurelin FOREIGN KEY (hr_concept_id)
      REFERENCES hr_concept (hr_concept_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrsalstrln ADD
  CONSTRAINT hrsalstruc_hrsalstrucline FOREIGN KEY (hr_salarystructure_id)
      REFERENCES hrsalstr (hr_salarystructure_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_shiftgroup : hrsftgrp
--

ALTER TABLE hrsftgrp ADD
  CONSTRAINT hrshiftgroup_hrshiftgroup FOREIGN KEY (hr_shiftgroup_id)
      REFERENCES hrsftgrp (hr_shiftgroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_skilltype : hrskltyp
--


--
-- Table : hr_workgroup : hrwgrp
--

ALTER TABLE hrwgrp ADD
  CONSTRAINT hrshiftgroup_hrworkgroup FOREIGN KEY (hr_shiftgroup_id)
      REFERENCES hrsftgrp (hr_shiftgroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hrwgrp ADD
  CONSTRAINT hrworkshift_hrworkgroup FOREIGN KEY (hr_workshift_id)
      REFERENCES hrwsft (hr_workshift_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_workshift : hrwsft
--

ALTER TABLE hrwsft ADD
  CONSTRAINT hrshiftgroup_hrworkshift FOREIGN KEY (hr_shiftgroup_id)
      REFERENCES hrsftgrp (hr_shiftgroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : hr_year : hr_year
--

ALTER TABLE hr_year ADD
  CONSTRAINT cyear_hryear FOREIGN KEY (c_year_id)
      REFERENCES c_year (c_year_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE hr_year ADD
  CONSTRAINT hrpayroll_hryear FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : i_asset : i_asset
--

ALTER TABLE i_asset ADD
  CONSTRAINT aassetgroup_iasset FOREIGN KEY (a_asset_group_id)
      REFERENCES aasstgrp (a_asset_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_asset ADD
  CONSTRAINT adepreciationtableheader_iasse FOREIGN KEY (a_depreciation_table_header_id)
      REFERENCES adepthdr (a_depreciation_table_header_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_asset ADD
  CONSTRAINT cacctschema_iasset FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_asset ADD
  CONSTRAINT cbpartner_iasset FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_asset ADD
  CONSTRAINT cbpartnerlocation_iasset FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_asset ADD
  CONSTRAINT clocation_iasset FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_asset ADD
  CONSTRAINT mlocator_iasset FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_asset ADD
  CONSTRAINT mproduct_iasset FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : i_bankstatement : ibs
--

ALTER TABLE ibs ADD
  CONSTRAINT cbankaccount_ibankstatement FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ibs ADD
  CONSTRAINT cbankstatement_ibankstatement FOREIGN KEY (c_bankstatement_id)
      REFERENCES cbstmt (c_bankstatement_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ibs ADD
  CONSTRAINT cbankstmtline_ibankstmt FOREIGN KEY (c_bankstatementline_id)
      REFERENCES cbstmtln (c_bankstatementline_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ibs ADD
  CONSTRAINT cbpartner_ibankstatement FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ibs ADD
  CONSTRAINT ccharge_ibankstmt FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ibs ADD
  CONSTRAINT ccurrency_ibankstatement FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ibs ADD
  CONSTRAINT cinvoice_ibankstatement FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ibs ADD
  CONSTRAINT cpayment_ibankstatement FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : i_bpartner : i_bpartner
--

ALTER TABLE i_bpartner ADD
  CONSTRAINT aduser_ibpartner FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_bpartner ADD
  CONSTRAINT birthcountry_ibpartner FOREIGN KEY (birthcountry_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_bpartner ADD
  CONSTRAINT birthregion_ibpartner FOREIGN KEY (birthregion_id)
      REFERENCES c_region (c_region_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_bpartner ADD
  CONSTRAINT cbpartner_ibpartner FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_bpartner ADD
  CONSTRAINT cbpartnerlocation_ibpartner FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_bpartner ADD
  CONSTRAINT cbpgroup_ibpartner FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_bpartner ADD
  CONSTRAINT ccountry_ipartner FOREIGN KEY (c_country_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_bpartner ADD
  CONSTRAINT cgreeting_ibpartner FOREIGN KEY (c_greeting_id)
      REFERENCES c_greeting (c_greeting_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_bpartner ADD
  CONSTRAINT cproject_ibpartner FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_bpartner ADD
  CONSTRAINT cprojectmembertype_ibpartner FOREIGN KEY (c_projectmembertype_id)
      REFERENCES cprjmbrtyp (c_projectmembertype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_bpartner ADD
  CONSTRAINT cregion_ibpartner FOREIGN KEY (c_region_id)
      REFERENCES c_region (c_region_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_bpartner ADD
  CONSTRAINT rinterestarea_ibpartner FOREIGN KEY (r_interestarea_id)
      REFERENCES ria (r_interestarea_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : i_budget : i_budget
--

ALTER TABLE i_budget ADD
  CONSTRAINT aasset_ibudget FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT account_ibudget FOREIGN KEY (account_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_budget ADD
  CONSTRAINT adorgtrx_ibudget FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT cacctschema_ibudget FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT cactivity_ibudget FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT cbpartner_ibudget FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT ccampaign_ibudget FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT clocfrom_ibudget FOREIGN KEY (c_locfrom_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT clocto_ibudget FOREIGN KEY (c_locto_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT cproject_ibudget FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT csalesregion_ibudget FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT csubacct_ibudget FOREIGN KEY (c_subacct_id)
      REFERENCES c_subacct (c_subacct_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_budget ADD
  CONSTRAINT cvalidcombination_ibudget FOREIGN KEY (c_validcombination_id)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT glbudget_ibudget FOREIGN KEY (gl_budget_id)
      REFERENCES gl_budget (gl_budget_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT gljournal_ibudget FOREIGN KEY (gl_journal_id)
      REFERENCES gl_journal (gl_journal_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_budget ADD
  CONSTRAINT gljournalbatch_ibudget FOREIGN KEY (gl_journalbatch_id)
      REFERENCES gljrnbch (gl_journalbatch_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT gljournalline_ibudget FOREIGN KEY (gl_journalline_id)
      REFERENCES gljrnln (gl_journalline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_budget ADD
  CONSTRAINT mproduct_ibudget FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT user1_ibudget FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT user2_ibudget FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT user3_ibudget FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_budget ADD
  CONSTRAINT user4_ibudget FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : i_conversion_rate : icvnrte
--

ALTER TABLE icvnrte ADD
  CONSTRAINT cconversionrate_iconvrate FOREIGN KEY (c_conversion_rate_id)
      REFERENCES ccvnr (c_conversion_rate_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE icvnrte ADD
  CONSTRAINT cconvtype_iconvrate FOREIGN KEY (c_conversiontype_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE icvnrte ADD
  CONSTRAINT ccurrency_iconvrate FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE icvnrte ADD
  CONSTRAINT ccurrency_iconvrateto FOREIGN KEY (c_currency_id_to)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : i_elementvalue : ielmval
--

ALTER TABLE ielmval ADD
  CONSTRAINT adcolumn_ielementvalue FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ielmval ADD
  CONSTRAINT ccharge_ielementvalue FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ielmval ADD
  CONSTRAINT celement_ielementvalue FOREIGN KEY (c_element_id)
      REFERENCES c_element (c_element_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ielmval ADD
  CONSTRAINT celementvalue_ielementvalue FOREIGN KEY (c_elementvalue_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ielmval ADD
  CONSTRAINT cevalueparent_ielementvalue FOREIGN KEY (parentelementvalue_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE ielmval ADD
  CONSTRAINT ctaxcategory_ielementvalue FOREIGN KEY (c_taxcategory_id)
      REFERENCES ctaxcat (c_taxcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : i_fajournal : ifajrn
--

ALTER TABLE ifajrn ADD
  CONSTRAINT account_ifajournal FOREIGN KEY (account_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT adorgdoc_ifajournal FOREIGN KEY (ad_orgdoc_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT adorgtrx_ifajournal FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT cacctschema_ifajournal FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT cactivity_ifajournal FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT cbpartner_ifajournal FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT ccampaign_ifajournal FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT ccurrency_ifajournal FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT cdoctype_ifajournal FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT clocfrom_ifajournal FOREIGN KEY (c_locfrom_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ifajrn ADD
  CONSTRAINT clocto_ifajournal FOREIGN KEY (c_locto_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ifajrn ADD
  CONSTRAINT cperiod_ifajournal FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT cproject_ifajournal FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT csalesregion_ifajournal FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT cuom_ifajournal FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT cvalidcombination_ifajournal FOREIGN KEY (c_validcombination_id)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT glbudget_ifajournal FOREIGN KEY (gl_budget_id)
      REFERENCES gl_budget (gl_budget_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT glcategory_ifajournal FOREIGN KEY (gl_category_id)
      REFERENCES glcat (gl_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT gljournal_ifajournal FOREIGN KEY (gl_journal_id)
      REFERENCES gl_journal (gl_journal_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT gljournalbatch_ifajournal FOREIGN KEY (gl_journalbatch_id)
      REFERENCES gljrnbch (gl_journalbatch_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT gljournalline_ifajournal FOREIGN KEY (gl_journalline_id)
      REFERENCES gljrnln (gl_journalline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT mproduct_ifajournal FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT user1_ifajournal FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT user2_ifajournal FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifajrn ADD
  CONSTRAINT user3_ifajournal FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ifajrn ADD
  CONSTRAINT user4_ifajournal FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : i_fixedasset : ifasst
--

ALTER TABLE ifasst ADD
  CONSTRAINT aasset_ifixedasset FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifasst ADD
  CONSTRAINT aassetclass_ifixedasset FOREIGN KEY (a_asset_class_id)
      REFERENCES aasstcls (a_asset_class_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifasst ADD
  CONSTRAINT aassetgroup_ifixedasset FOREIGN KEY (a_asset_group_id)
      REFERENCES aasstgrp (a_asset_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifasst ADD
  CONSTRAINT aassettype_ifixedasset FOREIGN KEY (a_asset_type_id)
      REFERENCES aassttyp (a_asset_type_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifasst ADD
  CONSTRAINT cbpartnersr_ifixedasset FOREIGN KEY (c_bpartnersr_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifasst ADD
  CONSTRAINT ccity_ifixedasset FOREIGN KEY (c_city_id)
      REFERENCES c_city (c_city_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifasst ADD
  CONSTRAINT cuom_ifixedasset FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifasst ADD
  CONSTRAINT mlocator_ifixedasset FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ifasst ADD
  CONSTRAINT mproduct_ifixedasset FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : i_forecast : i_forecast
--

ALTER TABLE i_forecast ADD
  CONSTRAINT mforecast_iforecast FOREIGN KEY (m_forecast_id)
      REFERENCES m_forecast (m_forecast_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_forecast ADD
  CONSTRAINT mforecastline_iforecast FOREIGN KEY (m_forecastline_id)
      REFERENCES mfcstln (m_forecastline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_forecast ADD
  CONSTRAINT mproduct_iforecast FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_forecast ADD
  CONSTRAINT mwarehouse_iforecast FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_forecast ADD
  CONSTRAINT salesrep_iforecast FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : i_gljournal : igljrn
--

ALTER TABLE igljrn ADD
  CONSTRAINT adorg_igljournal FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT adorgdoc_igljournal FOREIGN KEY (ad_orgdoc_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT adorgtrx_igljournal FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT cacctschema_igljournal FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT cactivity_gljournal FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT cbpartner_igljournal FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT ccampaign_igljournal FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT cconversiontype_igljournal FOREIGN KEY (c_conversiontype_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT ccurrency_igljournal FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT cdoctype_igljournal FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT celvalueaccount_igljournal FOREIGN KEY (account_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT celvalueuser2_igljournal FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT cevalueuser1_igljournal FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT clocfrom_igljournal FOREIGN KEY (c_locfrom_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT clocto_igljournal FOREIGN KEY (c_locto_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT cperiod_igljournal FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT cproject_igljournal FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT csalesregion_igljournal FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT cuom_igljournal FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE igljrn ADD
  CONSTRAINT cvalidcombination_igljournal FOREIGN KEY (c_validcombination_id)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT glbudget_igljournal FOREIGN KEY (gl_budget_id)
      REFERENCES gl_budget (gl_budget_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT glcategory_igljournal FOREIGN KEY (gl_category_id)
      REFERENCES glcat (gl_category_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT gljourbelline_igljournal FOREIGN KEY (gl_journalline_id)
      REFERENCES gljrnln (gl_journalline_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT gljournal_igljournal FOREIGN KEY (gl_journal_id)
      REFERENCES gl_journal (gl_journal_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT gljournalbatch_igljournal FOREIGN KEY (gl_journalbatch_id)
      REFERENCES gljrnbch (gl_journalbatch_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT mproduct_ogljournal FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE igljrn ADD
  CONSTRAINT user3_igljournal FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE igljrn ADD
  CONSTRAINT user4_igljournal FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : i_hr_attribute : ihratr
--

ALTER TABLE ihratr ADD
  CONSTRAINT adorgtrx_ihrattribute FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT adrule_ihrattribute FOREIGN KEY (ad_rule_id)
      REFERENCES ad_rule (ad_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ihratr ADD
  CONSTRAINT cactivity_ihrattribute FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT cbpartner_ihrattribute FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ihratr ADD
  CONSTRAINT ccampaign_ihrattribute FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT ccharge_ihrattribute FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT cdoctype_ihrattribute FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT cproject_ihrattribute FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrattribute_ihrattribute FOREIGN KEY (hr_attribute_id)
      REFERENCES hratr (hr_attribute_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrcareerlevel_ihrattribute FOREIGN KEY (hr_careerlevel_id)
      REFERENCES hrcarlvl (hr_careerlevel_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrconcept_ihrattribute FOREIGN KEY (hr_concept_id)
      REFERENCES hr_concept (hr_concept_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrcontract_ihrattribute FOREIGN KEY (hr_contract_id)
      REFERENCES hrctrt (hr_contract_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrdegree_ihrattribute FOREIGN KEY (hr_degree_id)
      REFERENCES hr_degree (hr_degree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrdepartment_ihrattribute FOREIGN KEY (hr_department_id)
      REFERENCES hrdept (hr_department_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrdesignation_ihrattribute FOREIGN KEY (hr_designation_id)
      REFERENCES hrdsgn (hr_designation_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hremployee_ihrattribute FOREIGN KEY (hr_employee_id)
      REFERENCES hremp (hr_employee_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hremployeetype_ihrattribute FOREIGN KEY (hr_employeetype_id)
      REFERENCES hremptyp (hr_employeetype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrgrade_ihrattribute FOREIGN KEY (hr_grade_id)
      REFERENCES hr_grade (hr_grade_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrjob_ihrattribute FOREIGN KEY (hr_job_id)
      REFERENCES hr_job (hr_job_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrjobeducation_ihrattribute FOREIGN KEY (hr_jobeducation_id)
      REFERENCES hrjobedu (hr_jobeducation_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrjobtype_ihrattribute FOREIGN KEY (hr_jobtype_id)
      REFERENCES hr_jobtype (hr_jobtype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrpayroll_ihrattribute FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrrace_ihrattribute FOREIGN KEY (hr_race_id)
      REFERENCES hr_race (hr_race_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrsalaryrange_ihrattribute FOREIGN KEY (hr_salaryrange_id)
      REFERENCES hrsalrng (hr_salaryrange_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrsalarystructure_ihrattribute FOREIGN KEY (hr_salarystructure_id)
      REFERENCES hrsalstr (hr_salarystructure_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrshiftgroup_ihrattribute FOREIGN KEY (hr_shiftgroup_id)
      REFERENCES hrsftgrp (hr_shiftgroup_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrskilltype_ihrattribute FOREIGN KEY (hr_skilltype_id)
      REFERENCES hrskltyp (hr_skilltype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihratr ADD
  CONSTRAINT hrworkgroup_ihrattribute FOREIGN KEY (hr_workgroup_id)
      REFERENCES hrwgrp (hr_workgroup_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : i_hr_employee : ihremp
--

ALTER TABLE ihremp ADD
  CONSTRAINT adorgtrx_ihremployee FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT aduser_ihremployee FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT cactivity_ihremployee FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT cbpartner_ihremployee FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT ccampaign_ihremployee FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT cproject_ihremployee FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT csalesregion_ihremployee FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrcareerlevel_ihremployee FOREIGN KEY (hr_careerlevel_id)
      REFERENCES hrcarlvl (hr_careerlevel_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrdegree_ihremployee FOREIGN KEY (hr_degree_id)
      REFERENCES hr_degree (hr_degree_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrdepartment_ihremployee FOREIGN KEY (hr_department_id)
      REFERENCES hrdept (hr_department_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrdesignation_ihremployee FOREIGN KEY (hr_designation_id)
      REFERENCES hrdsgn (hr_designation_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hremployee_ihremployee FOREIGN KEY (hr_employee_id)
      REFERENCES hremp (hr_employee_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hremployeetype_ihremployee FOREIGN KEY (hr_employeetype_id)
      REFERENCES hremptyp (hr_employeetype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrgrade_ihremployee FOREIGN KEY (hr_grade_id)
      REFERENCES hr_grade (hr_grade_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrjob_ihremployee FOREIGN KEY (hr_job_id)
      REFERENCES hr_job (hr_job_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrjobeducation_ihremployee FOREIGN KEY (hr_jobeducation_id)
      REFERENCES hrjobedu (hr_jobeducation_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrjobtype_ihremployee FOREIGN KEY (hr_jobtype_id)
      REFERENCES hr_jobtype (hr_jobtype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrpayroll_ihremployee FOREIGN KEY (hr_payroll_id)
      REFERENCES hr_payroll (hr_payroll_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrrace_ihremployee FOREIGN KEY (hr_race_id)
      REFERENCES hr_race (hr_race_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrsalaryrange_ihremployee FOREIGN KEY (hr_salaryrange_id)
      REFERENCES hrsalrng (hr_salaryrange_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrsalarystructure_ihremployee FOREIGN KEY (hr_salarystructure_id)
      REFERENCES hrsalstr (hr_salarystructure_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrshiftgroup_ihremployee FOREIGN KEY (hr_shiftgroup_id)
      REFERENCES hrsftgrp (hr_shiftgroup_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrskilltype_ihremployee FOREIGN KEY (hr_skilltype_id)
      REFERENCES hrskltyp (hr_skilltype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT hrworkgroup_ihremployee FOREIGN KEY (hr_workgroup_id)
      REFERENCES hrwgrp (hr_workgroup_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ihremp ADD
  CONSTRAINT nationality_ihremployee FOREIGN KEY (nationality_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : i_hr_movement : ihrmvt
--

ALTER TABLE ihrmvt ADD
  CONSTRAINT cbpartner_ihrmovement FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ihrmvt ADD
  CONSTRAINT hrconcept_ihrmovement FOREIGN KEY (hr_concept_id)
      REFERENCES hr_concept (hr_concept_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ihrmvt ADD
  CONSTRAINT hrmovement_ihrmovement FOREIGN KEY (hr_movement_id)
      REFERENCES hrmvt (hr_movement_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ihrmvt ADD
  CONSTRAINT hrprocess_ihrmovement FOREIGN KEY (hr_process_id)
      REFERENCES hr_process (hr_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : i_inoutlineconfirm : iiolncfm
--

ALTER TABLE iiolncfm ADD
  CONSTRAINT minoutlineconfirm_import FOREIGN KEY (m_inoutlineconfirm_id)
      REFERENCES miolncfm (m_inoutlineconfirm_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : i_inventory : iivt
--

ALTER TABLE iivt ADD
  CONSTRAINT minventory_iinventory FOREIGN KEY (m_inventory_id)
      REFERENCES mivt (m_inventory_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE iivt ADD
  CONSTRAINT minventoryline_iinventory FOREIGN KEY (m_inventoryline_id)
      REFERENCES mivtln (m_inventoryline_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE iivt ADD
  CONSTRAINT mlocator_iinventory FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE iivt ADD
  CONSTRAINT mproduct_iinventory FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE iivt ADD
  CONSTRAINT mwarehouse_iinventory FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : i_invoice : i_invoice
--

ALTER TABLE i_invoice ADD
  CONSTRAINT adorg_iinvoice FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT adorgtrx_iinvoice FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT aduser_iinvoice FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT adusersalesrep_iinvoice FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT cactivity_iinvoice FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT cbpartner_iinvoice FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT cbplocation_iinvoice FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT ccampaign_iinvoice FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT ccharge_iinvoice FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_invoice ADD
  CONSTRAINT ccountry_iinvoice FOREIGN KEY (c_country_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT ccurrency_iinvoice FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT cdoctype_iinvoice FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT cdunninglevel_iinvoice FOREIGN KEY (c_dunninglevel_id)
      REFERENCES cdunlvl (c_dunninglevel_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_invoice ADD
  CONSTRAINT cinvliceline_iinvoice FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT cinvoice_iinvoice FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT clocation_iinvoice FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT cpaymentterm_iinvoice FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT cproject_iinvoice FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT cregion_iinvoice FOREIGN KEY (c_region_id)
      REFERENCES c_region (c_region_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT ctax_iinvoice FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT mpricelist_iinvoice FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_invoice ADD
  CONSTRAINT nproduct_iinvoice FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : i_movement : i_movement
--

ALTER TABLE i_movement ADD
  CONSTRAINT adorgtrx_imovement FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_movement ADD
  CONSTRAINT aduser_imovement FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_movement ADD
  CONSTRAINT cbpartner_imovement FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_movement ADD
  CONSTRAINT ccampaign_imovement FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_movement ADD
  CONSTRAINT cdoctype_imovement FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_movement ADD
  CONSTRAINT cproject_imovement FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_movement ADD
  CONSTRAINT mmovement_imovement FOREIGN KEY (m_movement_id)
      REFERENCES m_movement (m_movement_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_movement ADD
  CONSTRAINT mmovementline_imovement FOREIGN KEY (m_movementline_id)
      REFERENCES mmovln (m_movementline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_movement ADD
  CONSTRAINT mproduct_imovement FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_movement ADD
  CONSTRAINT mshipper_imovement FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : i_order : i_order
--

ALTER TABLE i_order ADD
  CONSTRAINT adorg_iorder FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT adorgtrx_iorder FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT aduser_iorder FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT adusersalesrep_iorder FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT cactivity_iorder FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT cbolocation_iorder FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT cbpartner_iorder FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT cbpartnerlocbillto_iorder FOREIGN KEY (billto_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT ccampaign_iorder FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT ccharge_iorder FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_order ADD
  CONSTRAINT ccountry_iorder FOREIGN KEY (c_country_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT ccurrency_iorder FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT cdoctype_iorder FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT clocation_iorder FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT corder_iorder FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT corderline_iorder FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT cordersource_iorder FOREIGN KEY (c_ordersource_id)
      REFERENCES cordsrc (c_ordersource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_order ADD
  CONSTRAINT cpaymentterm_iorder FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT cproject_iorder FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT cregion_iorder FOREIGN KEY (c_region_id)
      REFERENCES c_region (c_region_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT ctax_iorder FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT cuom_iorder FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT mpricelist_iorder FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT mproduct_iorder FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT mshipper_iorder FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_order ADD
  CONSTRAINT mwarehouse_iorder FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : i_payment : i_payment
--

ALTER TABLE i_payment ADD
  CONSTRAINT cbankaccount_ipayment FOREIGN KEY (c_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_payment ADD
  CONSTRAINT cbpartner_ipayment FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_payment ADD
  CONSTRAINT ccharge_ipayment FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_payment ADD
  CONSTRAINT ccurrency_ipayment FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_payment ADD
  CONSTRAINT cdoctype_ipayment FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_payment ADD
  CONSTRAINT cinvoice_ipayment FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_payment ADD
  CONSTRAINT cpayment_ipayment FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : i_pricelist : iprlst
--

ALTER TABLE iprlst ADD
  CONSTRAINT cbpartner_ipricelist FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprlst ADD
  CONSTRAINT ccurrency_ipricelist FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprlst ADD
  CONSTRAINT cuom_ipricelist FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprlst ADD
  CONSTRAINT mpricelist_ipricelist FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprlst ADD
  CONSTRAINT mpricelistversion_ipricelist FOREIGN KEY (m_pricelist_version_id)
      REFERENCES mplstver (m_pricelist_version_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprlst ADD
  CONSTRAINT mproduct_ipricelist FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : i_product : i_product
--

ALTER TABLE i_product ADD
  CONSTRAINT cbpartner_iproduct FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_product ADD
  CONSTRAINT ccurrency_iproduct FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_product ADD
  CONSTRAINT cuom_iproduct FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_product ADD
  CONSTRAINT mproduct_iproduct FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_product ADD
  CONSTRAINT mproductcategory_iproduct FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE i_product ADD
  CONSTRAINT mproductclass_iproduct FOREIGN KEY (m_product_class_id)
      REFERENCES mprdcls (m_product_class_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_product ADD
  CONSTRAINT mproductclassification_iproduc FOREIGN KEY (m_product_classification_id)
      REFERENCES mprdclsn (m_product_classification_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_product ADD
  CONSTRAINT mproductgroup_iproduct FOREIGN KEY (m_product_group_id)
      REFERENCES mprdgrp (m_product_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : i_product_asi : iprdasi
--

ALTER TABLE iprdasi ADD
  CONSTRAINT mattribute_iproductasi FOREIGN KEY (m_attribute_id)
      REFERENCES matr (m_attribute_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdasi ADD
  CONSTRAINT mattributesearch_iproductasi FOREIGN KEY (m_attributesearch_id)
      REFERENCES matrsrch (m_attributesearch_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdasi ADD
  CONSTRAINT mattributeset_iproductasi FOREIGN KEY (m_attributeset_id)
      REFERENCES matrset (m_attributeset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdasi ADD
  CONSTRAINT mattributevalue_iproductasi FOREIGN KEY (m_attributevalue_id)
      REFERENCES matrval (m_attributevalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdasi ADD
  CONSTRAINT mproduct_iproductasi FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : i_product_bom : iprdbom
--

ALTER TABLE iprdbom ADD
  CONSTRAINT cuom_iproductbom FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdbom ADD
  CONSTRAINT mbomproduct_iproductbom FOREIGN KEY (m_bomproduct_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdbom ADD
  CONSTRAINT mchangenotice_iproductbom FOREIGN KEY (m_changenotice_id)
      REFERENCES mchgntc (m_changenotice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdbom ADD
  CONSTRAINT mproduct_iproductbom FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdbom ADD
  CONSTRAINT ppproductbom_iproductbom FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdbom ADD
  CONSTRAINT ppproductbomline_iproductbom FOREIGN KEY (pp_product_bomline_id)
      REFERENCES ppprdboml (pp_product_bomline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : i_productplanning : iprdpln
--

ALTER TABLE iprdpln ADD
  CONSTRAINT adworkflow_iproductplanning FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE iprdpln ADD
  CONSTRAINT cbpartner_iproductplanning FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdpln ADD
  CONSTRAINT ddnetworkdistribution_iproduct FOREIGN KEY (dd_networkdistribution_id)
      REFERENCES ddnwkdst (dd_networkdistribution_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE iprdpln ADD
  CONSTRAINT mforecast_iproductplanning FOREIGN KEY (m_forecast_id)
      REFERENCES m_forecast (m_forecast_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdpln ADD
  CONSTRAINT mforecastline_iproductplanning FOREIGN KEY (m_forecastline_id)
      REFERENCES mfcstln (m_forecastline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdpln ADD
  CONSTRAINT mproduct_iproductplanning FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdpln ADD
  CONSTRAINT mwarehouse_iproductplanning FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdpln ADD
  CONSTRAINT planner_iproductplanning FOREIGN KEY (planner_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdpln ADD
  CONSTRAINT ppproductbom_iproductplanning FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdpln ADD
  CONSTRAINT ppproductplanning_iproductplan FOREIGN KEY (pp_product_planning_id)
      REFERENCES ppprdpln (pp_product_planning_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE iprdpln ADD
  CONSTRAINT salesrep_iproductplanning FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE iprdpln ADD
  CONSTRAINT sresource_iproductplanning FOREIGN KEY (s_resource_id)
      REFERENCES s_resource (s_resource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : i_project : i_project
--

ALTER TABLE i_project ADD
  CONSTRAINT adcolor_iproject FOREIGN KEY (ad_color_id)
      REFERENCES ad_color (ad_color_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT adorgtrx_iproject FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT aduser_iproject FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT cactivity_iproject FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT cbpartner_iproject FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT cbpartnerlocation_iproject FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT cbpartnersr_iproject FOREIGN KEY (c_bpartnersr_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT ccampaign_iproject FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT ccurrency_iproject FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT cpaymentterm_iproject FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT cproject_iproject FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT cprojectcategory_iproject FOREIGN KEY (c_projectcategory_id)
      REFERENCES cprjcat (c_projectcategory_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT cprojectclass_iproject FOREIGN KEY (c_projectclass_id)
      REFERENCES cprjcls (c_projectclass_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT cprojectgroup_iproject FOREIGN KEY (c_projectgroup_id)
      REFERENCES cprjgrp (c_projectgroup_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT cprojectstatus_iproject FOREIGN KEY (c_projectstatus_id)
      REFERENCES cprjsts (c_projectstatus_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT cprojecttype_iproject FOREIGN KEY (c_projecttype_id)
      REFERENCES cprojtyp (c_projecttype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT csalesregion_iproject FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT mpricelistversion_iproject FOREIGN KEY (m_pricelist_version_id)
      REFERENCES mplstver (m_pricelist_version_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT mwarehouse_iproject FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT projectmanager_iproject FOREIGN KEY (projectmanager_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT salesrep_iproject FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT user1_iproject FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT user2_iproject FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT user3_iproject FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE i_project ADD
  CONSTRAINT user4_iproject FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : i_reportline : irptln
--

ALTER TABLE irptln ADD
  CONSTRAINT celementvalue_ireportline FOREIGN KEY (c_elementvalue_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE irptln ADD
  CONSTRAINT pareportline_ireportline FOREIGN KEY (pa_reportline_id)
      REFERENCES parptln (pa_reportline_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE irptln ADD
  CONSTRAINT pareportlineset_ireportline FOREIGN KEY (pa_reportlineset_id)
      REFERENCES parptlns (pa_reportlineset_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE irptln ADD
  CONSTRAINT pareportsource_ireportline FOREIGN KEY (pa_reportsource_id)
      REFERENCES parptsrc (pa_reportsource_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : i_saleshistory : islshst
--

ALTER TABLE islshst ADD
  CONSTRAINT cactivity_isaleshistory FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT cbpartner_isaleshistory FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT cbpartnerlocation_isaleshistor FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT cbpgroup_isaleshistory FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT ccampaign_isaleshistory FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT cproject_isaleshistory FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT cprojectphase_isaleshistory FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT cprojecttask_isaleshistory FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT csaleshistory_isaleshistory FOREIGN KEY (c_saleshistory_id)
      REFERENCES cslshst (c_saleshistory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT csalesregion_isaleshistory FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT mproduct_isaleshistory FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT mproductcategory_isaleshistory FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT mproductclass_isaleshistory FOREIGN KEY (m_product_class_id)
      REFERENCES mprdcls (m_product_class_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT mproductclassification_isalesh FOREIGN KEY (m_product_classification_id)
      REFERENCES mprdclsn (m_product_classification_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT mproductgroup_isaleshistory FOREIGN KEY (m_product_group_id)
      REFERENCES mprdgrp (m_product_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT mwarehouse_isaleshistory FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT salesrep_isaleshistory FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT user1_isaleshistory FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT user2_isaleshistory FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE islshst ADD
  CONSTRAINT user3_isaleshistory FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE islshst ADD
  CONSTRAINT user4_isaleshistory FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : i_workflow : i_workflow
--

ALTER TABLE i_workflow ADD
  CONSTRAINT adcolumn_iworkflow FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_workflow ADD
  CONSTRAINT adform_iworkflow FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_workflow ADD
  CONSTRAINT adimage_iworkflow FOREIGN KEY (ad_image_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_workflow ADD
  CONSTRAINT adprocess_iworkflow FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_workflow ADD
  CONSTRAINT adtable_iworkflow FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_workflow ADD
  CONSTRAINT adtask_iworkflow FOREIGN KEY (ad_task_id)
      REFERENCES ad_task (ad_task_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_workflow ADD
  CONSTRAINT adwfnode_iworkflow FOREIGN KEY (ad_wf_node_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_workflow ADD
  CONSTRAINT adwfresponsible_iworkflow FOREIGN KEY (ad_wf_responsible_id)
      REFERENCES adwfrsp (ad_wf_responsible_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_workflow ADD
  CONSTRAINT adwindow_iworkflow FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_workflow ADD
  CONSTRAINT adworkflow_iworkflow FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_workflow ADD
  CONSTRAINT adworkflowprocessor_iworkflow FOREIGN KEY (ad_workflowprocessor_id)
      REFERENCES adwfp (ad_workflowprocessor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_workflow ADD
  CONSTRAINT entityt_iworkflow FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_workflow ADD
  CONSTRAINT rmailtext_iworkflow FOREIGN KEY (r_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE i_workflow ADD
  CONSTRAINT sresource_iworkflow FOREIGN KEY (s_resource_id)
      REFERENCES s_resource (s_resource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : imp_processor : impprc
--

ALTER TABLE impprc ADD
  CONSTRAINT impprocessortype_impprocessor FOREIGN KEY (imp_processor_type_id)
      REFERENCES impprctyp (imp_processor_type_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : imp_processor_type : impprctyp
--


--
-- Table : imp_processorlog : impprcl
--

ALTER TABLE impprcl ADD
  CONSTRAINT impprocessor_impprocessorlog FOREIGN KEY (imp_processor_id)
      REFERENCES impprc (imp_processor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : imp_processorparameter : impprcparm
--

ALTER TABLE impprcparm ADD
  CONSTRAINT impprocessor_impprocessorparam FOREIGN KEY (imp_processor_id)
      REFERENCES impprc (imp_processor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : k_category : k_category
--


--
-- Table : k_categoryvalue : kcatval
--

ALTER TABLE kcatval ADD
  CONSTRAINT kcategory_kcategoryvalue FOREIGN KEY (k_category_id)
      REFERENCES k_category (k_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : k_comment : k_comment
--

ALTER TABLE k_comment ADD
  CONSTRAINT adsession_kcomment FOREIGN KEY (ad_session_id)
      REFERENCES ad_session (ad_session_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE k_comment ADD
  CONSTRAINT kentry_kcomment FOREIGN KEY (k_entry_id)
      REFERENCES k_entry (k_entry_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : k_entry : k_entry
--

ALTER TABLE k_entry ADD
  CONSTRAINT adsession_kentry FOREIGN KEY (ad_session_id)
      REFERENCES ad_session (ad_session_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE k_entry ADD
  CONSTRAINT ksource_kentry FOREIGN KEY (k_source_id)
      REFERENCES k_source (k_source_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE k_entry ADD
  CONSTRAINT ktopic_kentry FOREIGN KEY (k_topic_id)
      REFERENCES k_topic (k_topic_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : k_entrycategory : kentcat
--

ALTER TABLE kentcat ADD
  CONSTRAINT kcategory_kentrycategory FOREIGN KEY (k_category_id)
      REFERENCES k_category (k_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE kentcat ADD
  CONSTRAINT kcategoryvalue_kentrycategory FOREIGN KEY (k_categoryvalue_id)
      REFERENCES kcatval (k_categoryvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE kentcat ADD
  CONSTRAINT kentry_kentrycatalog FOREIGN KEY (k_entry_id)
      REFERENCES k_entry (k_entry_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : k_entryrelated : kentrel
--

ALTER TABLE kentrel ADD
  CONSTRAINT kentry_kentryrelated FOREIGN KEY (k_entry_id)
      REFERENCES k_entry (k_entry_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE kentrel ADD
  CONSTRAINT kentry_kentryrelatedid FOREIGN KEY (k_entryrelated_id)
      REFERENCES k_entry (k_entry_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : k_index : k_index
--

ALTER TABLE k_index ADD
  CONSTRAINT adtable_kindex FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE k_index ADD
  CONSTRAINT cdoctype_kindex FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE k_index ADD
  CONSTRAINT cmwebproject_kindex FOREIGN KEY (cm_webproject_id)
      REFERENCES cmwprj (cm_webproject_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE k_index ADD
  CONSTRAINT rrequesttype_kindex FOREIGN KEY (r_requesttype_id)
      REFERENCES rreqtyp (r_requesttype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : k_indexlog : k_indexlog
--


--
-- Table : k_indexstop : kidxstp
--

ALTER TABLE kidxstp ADD
  CONSTRAINT cdoctype_kindexstop FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE kidxstp ADD
  CONSTRAINT cmwebproject_kindexstop FOREIGN KEY (cm_webproject_id)
      REFERENCES cmwprj (cm_webproject_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE kidxstp ADD
  CONSTRAINT rrequesttype_kindexstop FOREIGN KEY (r_requesttype_id)
      REFERENCES rreqtyp (r_requesttype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : k_source : k_source
--


--
-- Table : k_synonym : k_synonym
--

ALTER TABLE k_synonym ADD
  CONSTRAINT adlangu_ksynonym FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : k_topic : k_topic
--

ALTER TABLE k_topic ADD
  CONSTRAINT ktype_ktopic FOREIGN KEY (k_type_id)
      REFERENCES k_type (k_type_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : k_type : k_type
--


--
-- Table : m_attribute : matr
--

ALTER TABLE matr ADD
  CONSTRAINT mattributesearch_mattribute FOREIGN KEY (m_attributesearch_id)
      REFERENCES matrsrch (m_attributesearch_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_attributeinstance : matrinst
--

ALTER TABLE matrinst ADD
  CONSTRAINT mattribute_mattributeinst FOREIGN KEY (m_attribute_id)
      REFERENCES matr (m_attribute_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE matrinst ADD
  CONSTRAINT mattributevalue_mattrinst FOREIGN KEY (m_attributevalue_id)
      REFERENCES matrval (m_attributevalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE matrinst ADD
  CONSTRAINT mattrsetinst__mattrinst FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_attributesearch : matrsrch
--


--
-- Table : m_attributeset : matrset
--

ALTER TABLE matrset ADD
  CONSTRAINT mlotctl_mattributeset FOREIGN KEY (m_lotctl_id)
      REFERENCES m_lotctl (m_lotctl_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE matrset ADD
  CONSTRAINT msernoctl_attributeset FOREIGN KEY (m_sernoctl_id)
      REFERENCES m_sernoctl (m_sernoctl_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_attributesetexclude : matrsexcl
--

ALTER TABLE matrsexcl ADD
  CONSTRAINT adtable_mattributesetexclude FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE matrsexcl ADD
  CONSTRAINT mattributeset_masexclude FOREIGN KEY (m_attributeset_id)
      REFERENCES matrset (m_attributeset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_attributesetinstance : matrseti
--

ALTER TABLE matrseti ADD
  CONSTRAINT mattributeset_mattribsetinst FOREIGN KEY (m_attributeset_id)
      REFERENCES matrset (m_attributeset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE matrseti ADD
  CONSTRAINT mlot_mattributesetinstance FOREIGN KEY (m_lot_id)
      REFERENCES m_lot (m_lot_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_attributeuse : matruse
--

ALTER TABLE matruse ADD
  CONSTRAINT mattribute_mattributeuse FOREIGN KEY (m_attribute_id)
      REFERENCES matr (m_attribute_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE matruse ADD
  CONSTRAINT mattributeset_mattributeuse FOREIGN KEY (m_attributeset_id)
      REFERENCES matrset (m_attributeset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_attributevalue : matrval
--

ALTER TABLE matrval ADD
  CONSTRAINT mattribute_mattributevalue FOREIGN KEY (m_attribute_id)
      REFERENCES matr (m_attribute_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_bom : m_bom
--

ALTER TABLE m_bom ADD
  CONSTRAINT mcn_mbom FOREIGN KEY (m_changenotice_id)
      REFERENCES mchgntc (m_changenotice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_bom ADD
  CONSTRAINT mproduct_mbom FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_bomalternative : mbomalt
--

ALTER TABLE mbomalt ADD
  CONSTRAINT mproduct_mbomalternative FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_bomproduct : mbomprd
--

ALTER TABLE mbomprd ADD
  CONSTRAINT masi_mbomproduct FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mbomprd ADD
  CONSTRAINT mbom_mbomproduct FOREIGN KEY (m_bom_id)
      REFERENCES m_bom (m_bom_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mbomprd ADD
  CONSTRAINT mbomalternative_mbomproduct FOREIGN KEY (m_bomalternative_id)
      REFERENCES mbomalt (m_bomalternative_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mbomprd ADD
  CONSTRAINT mcn_mbomproduct FOREIGN KEY (m_changenotice_id)
      REFERENCES mchgntc (m_changenotice_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE mbomprd ADD
  CONSTRAINT mproduct_mbomproduct FOREIGN KEY (m_productbom_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mbomprd ADD
  CONSTRAINT mproductop_mbomproduct FOREIGN KEY (m_productoperation_id)
      REFERENCES mprdopn (m_productoperation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_bp_price : m_bp_price
--

ALTER TABLE m_bp_price ADD
  CONSTRAINT cbpartner_mbpprice FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_bp_price ADD
  CONSTRAINT ccurrency_mbpprice FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_bp_price ADD
  CONSTRAINT mproduct_mbpprice FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_changenotice : mchgntc
--


--
-- Table : m_changerequest : mchgreq
--

ALTER TABLE mchgreq ADD
  CONSTRAINT mcn_mcr FOREIGN KEY (m_changenotice_id)
      REFERENCES mchgntc (m_changenotice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mchgreq ADD
  CONSTRAINT mfixchangenotice_mchangereques FOREIGN KEY (m_fixchangenotice_id)
      REFERENCES mchgntc (m_changenotice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mchgreq ADD
  CONSTRAINT ppproductbom_mchangerequest FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_cost : m_cost
--

ALTER TABLE m_cost ADD
  CONSTRAINT adclient_mcost FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_cost ADD
  CONSTRAINT adorg_m_cost FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_cost ADD
  CONSTRAINT cacctschema_mcost FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE m_cost ADD
  CONSTRAINT masi_mcost FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE m_cost ADD
  CONSTRAINT mcostelement_mcost FOREIGN KEY (m_costelement_id)
      REFERENCES mcstelm (m_costelement_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE m_cost ADD
  CONSTRAINT mcosttype_mcost FOREIGN KEY (m_costtype_id)
      REFERENCES m_costtype (m_costtype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE m_cost ADD
  CONSTRAINT mproduct_mcost FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_cost ADD
  CONSTRAINT mwarehouse_mcost FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_costdetail : mcstdet
--

ALTER TABLE mcstdet ADD
  CONSTRAINT adclient_mcostdetail FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT adorg_mcostdetail FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT cacctschema_mcostdetail FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT clandedcostallocation_mcostdet FOREIGN KEY (c_landedcostallocation_id)
      REFERENCES clndcstalc (c_landedcostallocation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT corderline_mcostdetail FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT cprojectissue_mcostdetail FOREIGN KEY (c_projectissue_id)
      REFERENCES cprojiss (c_projectissue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT masi_mcostdetail FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT mcostelement_mcostdetail FOREIGN KEY (m_costelement_id)
      REFERENCES mcstelm (m_costelement_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT mcosttype_mcostdetail FOREIGN KEY (m_costtype_id)
      REFERENCES m_costtype (m_costtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT minoutline_mcostdetail FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT minventoryline_mcostdetail FOREIGN KEY (m_inventoryline_id)
      REFERENCES mivtln (m_inventoryline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT minvoiceline_mcostdetail FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT mmatchinv_mcostdetail FOREIGN KEY (m_matchinv_id)
      REFERENCES m_matchinv (m_matchinv_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT mmatchpo_mcostdetail FOREIGN KEY (m_matchpo_id)
      REFERENCES m_matchpo (m_matchpo_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT mmovementline_mcostdetail FOREIGN KEY (m_movementline_id)
      REFERENCES mmovln (m_movementline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT mproduct_mcostdetail FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT mproductionline_mcostdetail FOREIGN KEY (m_productionline_id)
      REFERENCES mpdnln (m_productionline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT mwarehouse_mcostdetail FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mcstdet ADD
  CONSTRAINT ppcostcollector_mcostdetail FOREIGN KEY (pp_cost_collector_id)
      REFERENCES ppcstcol (pp_cost_collector_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_costelement : mcstelm
--


--
-- Table : m_costqueue : mcstq
--

ALTER TABLE mcstq ADD
  CONSTRAINT cacctschema_mcostqueue FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mcstq ADD
  CONSTRAINT masi_mcostqueue FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mcstq ADD
  CONSTRAINT mcostelement_mcostqueue FOREIGN KEY (m_costelement_id)
      REFERENCES mcstelm (m_costelement_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mcstq ADD
  CONSTRAINT mcosttype_mcostqueue FOREIGN KEY (m_costtype_id)
      REFERENCES m_costtype (m_costtype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mcstq ADD
  CONSTRAINT mproduct_mcostqueue FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_costtype : m_costtype
--


--
-- Table : m_demand : m_demand
--

ALTER TABLE m_demand ADD
  CONSTRAINT ccalendar_mdemand FOREIGN KEY (c_calendar_id)
      REFERENCES c_calendar (c_calendar_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_demand ADD
  CONSTRAINT cyear_mdemand FOREIGN KEY (c_year_id)
      REFERENCES c_year (c_year_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_demanddetail : mdmddet
--

ALTER TABLE mdmddet ADD
  CONSTRAINT corderline_mdemanddetail FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mdmddet ADD
  CONSTRAINT mdemandline_mdemanddetail FOREIGN KEY (m_demandline_id)
      REFERENCES mdmdln (m_demandline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mdmddet ADD
  CONSTRAINT mforecastline_mdemanddetail FOREIGN KEY (m_forecastline_id)
      REFERENCES mfcstln (m_forecastline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mdmddet ADD
  CONSTRAINT mreqline_mdemanddetail FOREIGN KEY (m_requisitionline_id)
      REFERENCES mreqln (m_requisitionline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_demandline : mdmdln
--

ALTER TABLE mdmdln ADD
  CONSTRAINT cperiod_mdemandline FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mdmdln ADD
  CONSTRAINT mdemand_mdemandline FOREIGN KEY (m_demand_id)
      REFERENCES m_demand (m_demand_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mdmdln ADD
  CONSTRAINT mproduct_mdemandline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_discountschema : mdscs
--


--
-- Table : m_discountschemabreak : mdscsbrk
--

ALTER TABLE mdscsbrk ADD
  CONSTRAINT mdiscounts_mdsbreak FOREIGN KEY (m_discountschema_id)
      REFERENCES mdscs (m_discountschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mdscsbrk ADD
  CONSTRAINT mprodcategory_mdiscountsbreak FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mdscsbrk ADD
  CONSTRAINT mproduct_mdiscountsbreak FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_discountschemaline : mdscsln
--

ALTER TABLE mdscsln ADD
  CONSTRAINT cbpartner_mdiscountsline FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mdscsln ADD
  CONSTRAINT cconversiontype_mdiscschline FOREIGN KEY (c_conversiontype_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mdscsln ADD
  CONSTRAINT mdiscountschema_mdsline FOREIGN KEY (m_discountschema_id)
      REFERENCES mdscs (m_discountschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mdscsln ADD
  CONSTRAINT mprodcategory_mdiscountsline FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mdscsln ADD
  CONSTRAINT mproduct_mdiscountsline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;

--
-- Table : m_distributionlist : mdstlst
--


--
-- Table : m_distributionlistline : mdstlstln
--

ALTER TABLE mdstlstln ADD
  CONSTRAINT cbpartner_mdistlistline FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mdstlstln ADD
  CONSTRAINT cbpartnerloc_mdistlistline FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mdstlstln ADD
  CONSTRAINT mdistributionlist_line FOREIGN KEY (m_distributionlist_id)
      REFERENCES mdstlst (m_distributionlist_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_distributionrun : mdstr
--

ALTER TABLE mdstr ADD
  CONSTRAINT cbpartner_mdistributionrun FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mdstr ADD
  CONSTRAINT cbplocation_mdistributionrun FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_distributionrunline : mdstrln
--

ALTER TABLE mdstrln ADD
  CONSTRAINT mdistributionlist_runline FOREIGN KEY (m_distributionlist_id)
      REFERENCES mdstlst (m_distributionlist_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mdstrln ADD
  CONSTRAINT mdistributionrun_line FOREIGN KEY (m_distributionrun_id)
      REFERENCES mdstr (m_distributionrun_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mdstrln ADD
  CONSTRAINT mproduct_mdistributionrun FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_edi : m_edi
--

ALTER TABLE m_edi ADD
  CONSTRAINT cbpedi_medi FOREIGN KEY (c_bp_edi_id)
      REFERENCES c_bp_edi (c_bp_edi_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_edi ADD
  CONSTRAINT mproduct_medi FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_edi ADD
  CONSTRAINT mwarehouse_medi FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_edi_info : m_edi_info
--

ALTER TABLE m_edi_info ADD
  CONSTRAINT medi_ediinfo FOREIGN KEY (m_edi_id)
      REFERENCES m_edi (m_edi_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_forecast : m_forecast
--

ALTER TABLE m_forecast ADD
  CONSTRAINT ccalendar_mforecast FOREIGN KEY (c_calendar_id)
      REFERENCES c_calendar (c_calendar_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_forecast ADD
  CONSTRAINT ccampaign_mforecast FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_forecast ADD
  CONSTRAINT cproject_mforecast FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_forecast ADD
  CONSTRAINT cprojectphase_mforecast FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_forecast ADD
  CONSTRAINT cyear_mforecast FOREIGN KEY (c_year_id)
      REFERENCES c_year (c_year_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_forecast ADD
  CONSTRAINT mpricelist_mforecast FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_forecast ADD
  CONSTRAINT ppcalendar_mforecast FOREIGN KEY (pp_calendar_id)
      REFERENCES ppcal (pp_calendar_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_forecast ADD
  CONSTRAINT ppperioddefinition_mforecast FOREIGN KEY (pp_perioddefinition_id)
      REFERENCES pppddfn (pp_perioddefinition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_forecastline : mfcstln
--

ALTER TABLE mfcstln ADD
  CONSTRAINT cperiod_mforecastline FOREIGN KEY (c_period_id)
      REFERENCES c_period (c_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mfcstln ADD
  CONSTRAINT mforecast_mforecastline FOREIGN KEY (m_forecast_id)
      REFERENCES m_forecast (m_forecast_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mfcstln ADD
  CONSTRAINT mproduct_mforecastline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mfcstln ADD
  CONSTRAINT mwarehouse_mforecastline FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mfcstln ADD
  CONSTRAINT ppperiod_mforecastline FOREIGN KEY (pp_period_id)
      REFERENCES pp_period (pp_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mfcstln ADD
  CONSTRAINT salesrep_mforecastline FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_freight : m_freight
--

ALTER TABLE m_freight ADD
  CONSTRAINT ccountry_mfreight FOREIGN KEY (c_country_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_freight ADD
  CONSTRAINT ccountryto_mfreight FOREIGN KEY (to_country_id)
      REFERENCES c_country (c_country_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_freight ADD
  CONSTRAINT ccurrency_mfreight FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_freight ADD
  CONSTRAINT cregion_mfreight FOREIGN KEY (c_region_id)
      REFERENCES c_region (c_region_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_freight ADD
  CONSTRAINT cregionto_mfreight FOREIGN KEY (to_region_id)
      REFERENCES c_region (c_region_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_freight ADD
  CONSTRAINT mfreightcategory_mfreight FOREIGN KEY (m_freightcategory_id)
      REFERENCES mfhtcat (m_freightcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_freight ADD
  CONSTRAINT mshipper_mfreight FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.m_freight
  OWNER TO adempiere;

--
-- Table : m_freightcategory : mfhtcat
--


--
-- Table : m_inout : m_inout
--

ALTER TABLE m_inout ADD
  CONSTRAINT adorg_minout FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT adorgtrx_minout FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT aduser_minout FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT aduser_sr_minout FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT cactivity_minout FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT cbpartner_minout FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT ccampaign_minout FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT ccharge_minout FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT cdoctype_minout FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT celementvalueuser1_minout FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT celementvalueuser2_minout FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT cinvoice_minout FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT corder_minout FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT cpos_minout FOREIGN KEY (c_pos_id)
      REFERENCES c_pos (c_pos_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT cproject_minout FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT dropshipbpartner_minout FOREIGN KEY (dropship_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT dropshiplocation_minout FOREIGN KEY (dropship_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT dropshipuser_minout FOREIGN KEY (dropship_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT mfreightcategory_minout FOREIGN KEY (m_freightcategory_id)
      REFERENCES mfhtcat (m_freightcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT minout_ref FOREIGN KEY (ref_inout_id)
      REFERENCES m_inout (m_inout_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT mrma_minout FOREIGN KEY (m_rma_id)
      REFERENCES m_rma (m_rma_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT mshipper_minout FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT mwarehouse_minout FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT reversal_minout FOREIGN KEY (reversal_id)
      REFERENCES m_inout (m_inout_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT user3_minout FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT user4_minout FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_inout ADD
  CONSTRAINT vbplocation_minout FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_inoutconfirm : miocfm
--

ALTER TABLE miocfm ADD
  CONSTRAINT cinvoice_minoutconfirm FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE miocfm ADD
  CONSTRAINT minout_minoutconfirm FOREIGN KEY (m_inout_id)
      REFERENCES m_inout (m_inout_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE miocfm ADD
  CONSTRAINT minventory_minoutconfirm FOREIGN KEY (m_inventory_id)
      REFERENCES mivt (m_inventory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_inoutline : mioln
--

ALTER TABLE mioln ADD
  CONSTRAINT adorg_minoutline FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT adorgtrx_minoutline FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT c_projectphase_minoutline FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT cactivity_minoutline FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT ccampaign_minoutline FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT ccharge_minoutline FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT celemenrvalueuser1_minoutline FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT celemenrvalueuser2_minoutline FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT corderline_minout FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT cproject_minoutline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT cprojecttask_minoutline FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT cuom_minoutline FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT mattrsetinst_minoutline FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT mfreightcategory_minoutline FOREIGN KEY (m_freightcategory_id)
      REFERENCES mfhtcat (m_freightcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT minout_minoutline FOREIGN KEY (m_inout_id)
      REFERENCES m_inout (m_inout_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mioln ADD
  CONSTRAINT minoutline_ref FOREIGN KEY (ref_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT mlocator_minoutline FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT mproduct_minoutline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT mrmaline_minoutline FOREIGN KEY (m_rmaline_id)
      REFERENCES m_rmaline (m_rmaline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT mshipper_minoutline FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT reversalline_minoutline FOREIGN KEY (reversalline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT user3_minoutline FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mioln ADD
  CONSTRAINT user4_minoutline FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_inoutlineconfirm : miolncfm
--

ALTER TABLE miolncfm ADD
  CONSTRAINT cinvoiceline_minoutlineconfirm FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE miolncfm ADD
  CONSTRAINT minoutconfirm_minoutlineconf FOREIGN KEY (m_inoutconfirm_id)
      REFERENCES miocfm (m_inoutconfirm_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE miolncfm ADD
  CONSTRAINT minoutline_minoutconfirm FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE miolncfm ADD
  CONSTRAINT minventoryline_minoutlineconfi FOREIGN KEY (m_inventoryline_id)
      REFERENCES mivtln (m_inventoryline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_inoutlinema : miolnma
--

ALTER TABLE miolnma ADD
  CONSTRAINT masi_minourlinema FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE miolnma ADD
  CONSTRAINT minoutline_minoutlinema FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_inventory : mivt
--

ALTER TABLE mivt ADD
  CONSTRAINT adorg_minventory FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivt ADD
  CONSTRAINT adorgtrx_minventory FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivt ADD
  CONSTRAINT cactivity_minventory FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivt ADD
  CONSTRAINT ccampaign_minventory FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivt ADD
  CONSTRAINT cdoctype_minventory FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivt ADD
  CONSTRAINT celementvalueuser1_minvent FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivt ADD
  CONSTRAINT celementvalueuser2_minvent FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivt ADD
  CONSTRAINT cproject_minventory FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivt ADD
  CONSTRAINT mperpetualinv_minventory FOREIGN KEY (m_perpetualinv_id)
      REFERENCES mpplivt (m_perpetualinv_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivt ADD
  CONSTRAINT mwarehouse_minventory FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivt ADD
  CONSTRAINT reversal_minventory FOREIGN KEY (reversal_id)
      REFERENCES mivt (m_inventory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivt ADD
  CONSTRAINT user3_minventory FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivt ADD
  CONSTRAINT user4_minventory FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_inventoryline : mivtln
--

ALTER TABLE mivtln ADD
  CONSTRAINT adorgtrx_minventoryline FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT cactivity_minventoryline FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT ccampaign_minventoryline FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT ccharge_minventoryline FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT cproject_minventoryline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT cprojectphase_minventoryline FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT cprojecttask_minventoryline FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT mattrsetinst_minventoryline FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT minventory_minventoryline FOREIGN KEY (m_inventory_id)
      REFERENCES mivt (m_inventory_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mivtln ADD
  CONSTRAINT mlocator_minventoryline FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT mproduct_minventoryline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT reversalline_minventoryline FOREIGN KEY (reversalline_id)
      REFERENCES mivtln (m_inventoryline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT user1_minventoryline FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT user2_minventoryline FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT user3_minventoryline FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mivtln ADD
  CONSTRAINT user4_minventoryline FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_inventorylinema : mivtlnma
--

ALTER TABLE mivtlnma ADD
  CONSTRAINT masi_minventorylinema FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mivtlnma ADD
  CONSTRAINT minventoryline_milinema FOREIGN KEY (m_inventoryline_id)
      REFERENCES mivtln (m_inventoryline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_locator : m_locator
--

ALTER TABLE m_locator ADD
  CONSTRAINT m_warehouse_locator FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE m_locator ADD
  CONSTRAINT m_wh_locator_client FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_locator ADD
  CONSTRAINT m_wh_locator_org FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_lot : m_lot
--

ALTER TABLE m_lot ADD
  CONSTRAINT mlotctl_mlot FOREIGN KEY (m_lotctl_id)
      REFERENCES m_lotctl (m_lotctl_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_lot ADD
  CONSTRAINT mproduct_mlot FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_lotctl : m_lotctl
--


--
-- Table : m_lotctlexclude : mlotcexcl
--

ALTER TABLE mlotcexcl ADD
  CONSTRAINT adtable_mlotctlexclude FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mlotcexcl ADD
  CONSTRAINT mlotctl_mlotctlexclude FOREIGN KEY (m_lotctl_id)
      REFERENCES m_lotctl (m_lotctl_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_matchinv : m_matchinv
--

ALTER TABLE m_matchinv ADD
  CONSTRAINT convoiceline_mmatchinv FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_matchinv ADD
  CONSTRAINT mattributesetinstance_mmatchin FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_matchinv ADD
  CONSTRAINT minoutline_mmatchinv FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_matchinv ADD
  CONSTRAINT mproduct_mmatchinv FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_matchinv ADD
  CONSTRAINT reversal_mmatchinv FOREIGN KEY (reversal_id)
      REFERENCES m_matchinv (m_matchinv_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_matchpo : m_matchpo
--

ALTER TABLE m_matchpo ADD
  CONSTRAINT cinvoiceline_mmatchpo FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_matchpo ADD
  CONSTRAINT corderline_mmatchpo FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_matchpo ADD
  CONSTRAINT mattributesetinstance_mmatchpo FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_matchpo ADD
  CONSTRAINT minoutline_mmatchpo FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_matchpo ADD
  CONSTRAINT mproduct_mmatchpo FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_matchpo ADD
  CONSTRAINT reversal_mmatchpo FOREIGN KEY (reversal_id)
      REFERENCES m_matchpo (m_matchpo_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_movement : m_movement
--

ALTER TABLE m_movement ADD
  CONSTRAINT adorg_mmovement FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT adorgtrx_mmovement FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT aduser_mmovement FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT cactivity_mmovement FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT cbpartner_mmovement FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT ccampaign_mmovement FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT ccharge_mmovement FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT cdoctype_mmovement FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT celementvalueuser1_mmove FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT celementvalueuser2_mmove FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT cproject_mmovement FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT ddorder_mmovement FOREIGN KEY (dd_order_id)
      REFERENCES dd_order (dd_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT mproductionbatch_mmovement FOREIGN KEY (m_productionbatch_id)
      REFERENCES mprdbtch (m_productionbatch_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT mshipper_mmovement FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT reversal_mmovement FOREIGN KEY (reversal_id)
      REFERENCES m_movement (m_movement_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT salesrep_mmovement FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT user3_mmovement FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_movement ADD
  CONSTRAINT user4_mmovement FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_movementconfirm : mmovcfm
--

ALTER TABLE mmovcfm ADD
  CONSTRAINT minventory_mmovconfirm FOREIGN KEY (m_inventory_id)
      REFERENCES mivt (m_inventory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovcfm ADD
  CONSTRAINT mmovement_mmovementconfirm FOREIGN KEY (m_movement_id)
      REFERENCES m_movement (m_movement_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mmovcfm ADD
  CONSTRAINT reversal_mmovementconfirm FOREIGN KEY (reversal_id)
      REFERENCES mmovcfm (m_movementconfirm_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_movementline : mmovln
--

ALTER TABLE mmovln ADD
  CONSTRAINT adorgtrx_mmovementline FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT cactivity_mmovementline FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT ccampaign_mmovementline FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT cproject_mmovementline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT cprojectphase_mmovementline FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT cprojecttask_mmovementline FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT ddorderline_mmovementline FOREIGN KEY (dd_orderline_id)
      REFERENCES ddordln (dd_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT mattributesetinstanceto_mmovem FOREIGN KEY (m_attributesetinstanceto_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT mattrsetinst_mmovementline FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT mlocator_movementline FOREIGN KEY (m_locatorto_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT mlocatorto_mmovementline FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT mmovement_mmovementline FOREIGN KEY (m_movement_id)
      REFERENCES m_movement (m_movement_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mmovln ADD
  CONSTRAINT mproduct_mmovementline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT reversalline_mmovementline FOREIGN KEY (reversalline_id)
      REFERENCES mmovln (m_movementline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT user1_mmovementline FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT user2_mmovementline FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT user3_mmovementline FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovln ADD
  CONSTRAINT user4_mmovementline FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_movementlineconfirm : mmovlncfm
--

ALTER TABLE mmovlncfm ADD
  CONSTRAINT minventoryline_mmovlineconfirm FOREIGN KEY (m_inventoryline_id)
      REFERENCES mivtln (m_inventoryline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mmovlncfm ADD
  CONSTRAINT mmovementconfirm_mmovlineconf FOREIGN KEY (m_movementconfirm_id)
      REFERENCES mmovcfm (m_movementconfirm_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mmovlncfm ADD
  CONSTRAINT mmovementline_mmovlineconfirm FOREIGN KEY (m_movementline_id)
      REFERENCES mmovln (m_movementline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mmovlncfm ADD
  CONSTRAINT reversalline_mmovementlineconf FOREIGN KEY (reversalline_id)
      REFERENCES mmovlncfm (m_movementlineconfirm_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_movementlinema : mmovlnma
--

ALTER TABLE mmovlnma ADD
  CONSTRAINT masi_mmovementlinema FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mmovlnma ADD
  CONSTRAINT mmovementline_mmovementlinema FOREIGN KEY (m_movementline_id)
      REFERENCES mmovln (m_movementline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_operationresource : moprsc
--

ALTER TABLE moprsc ADD
  CONSTRAINT aasset_moperationresource FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE moprsc ADD
  CONSTRAINT cjob_moperationresource FOREIGN KEY (c_job_id)
      REFERENCES c_job (c_job_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE moprsc ADD
  CONSTRAINT mproductop_mopresource FOREIGN KEY (m_productoperation_id)
      REFERENCES mprdopn (m_productoperation_id)
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.m_operationresource
  OWNER TO adempiere;

--
-- Table : m_package : m_package
--

ALTER TABLE m_package ADD
  CONSTRAINT minout_mpackage FOREIGN KEY (m_inout_id)
      REFERENCES m_inout (m_inout_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_package ADD
  CONSTRAINT mshipper_mpackage FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.m_package
  OWNER TO adempiere;

--
-- Table : m_packageline : mpkgln
--

ALTER TABLE mpkgln ADD
  CONSTRAINT minoutline_mpackageline FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpkgln ADD
  CONSTRAINT mpackage_mpackageline FOREIGN KEY (m_package_id)
      REFERENCES m_package (m_package_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.m_packageline
  OWNER TO adempiere;

--
-- Table : m_parttype : m_parttype
--


--
-- Table : m_perpetualinv : mpplivt
--

ALTER TABLE mpplivt ADD
  CONSTRAINT mprodcategory_mperpetualinv FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpplivt ADD
  CONSTRAINT mwarehouse_mperpetualinv FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_pricelist : mplst
--

ALTER TABLE mplst ADD
  CONSTRAINT basepricelist FOREIGN KEY (basepricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mplst ADD
  CONSTRAINT ccurrency_mpricelist FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_pricelist_version : mplstver
--

ALTER TABLE mplstver ADD
  CONSTRAINT mdiscounts_mplversion FOREIGN KEY (m_discountschema_id)
      REFERENCES mdscs (m_discountschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mplstver ADD
  CONSTRAINT mpricelist_mpricelistversion FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mplstver ADD
  CONSTRAINT mpricelistversionbase_mpriceli FOREIGN KEY (m_pricelist_version_base_id)
      REFERENCES mplstver (m_pricelist_version_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_product : m_product
--

ALTER TABLE m_product ADD
  CONSTRAINT ad_org_mproduct FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT adclient_mproduct FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT crevrecognition_mproduct FOREIGN KEY (c_revenuerecognition_id)
      REFERENCES crevrcgn (c_revenuerecognition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT csubscriptiontype_mproduct FOREIGN KEY (c_subscriptiontype_id)
      REFERENCES csubtyp (c_subscriptiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT ctaxcategory_mproduct FOREIGN KEY (c_taxcategory_id)
      REFERENCES ctaxcat (c_taxcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT ctaxtype_mproduct FOREIGN KEY (c_taxtype_id)
      REFERENCES c_taxtype (c_taxtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT cuom_mproduct FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT mattributeset_mproduct FOREIGN KEY (m_attributeset_id)
      REFERENCES matrset (m_attributeset_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE m_product ADD
  CONSTRAINT mattrsetinst_mproduct FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT mfreightcategory_mproduct FOREIGN KEY (m_freightcategory_id)
      REFERENCES mfhtcat (m_freightcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT mlocator_mproduct FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT mparttype_mproduct FOREIGN KEY (m_parttype_id)
      REFERENCES m_parttype (m_parttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT mproduct_mproductcategory FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT mproductclass_mproduct FOREIGN KEY (m_product_class_id)
      REFERENCES mprdcls (m_product_class_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT mproductclassification_mproduc FOREIGN KEY (m_product_classification_id)
      REFERENCES mprdclsn (m_product_classification_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT mproductgroup_mproduct FOREIGN KEY (m_product_group_id)
      REFERENCES mprdgrp (m_product_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT rmailtext_mproduct FOREIGN KEY (r_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT salesrep_mproduct FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT sexpensetype_mproduct FOREIGN KEY (s_expensetype_id)
      REFERENCES sexptyp (s_expensetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_product ADD
  CONSTRAINT sresource_mproduct FOREIGN KEY (s_resource_id)
      REFERENCES s_resource (s_resource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_product_acct : mprodacct
--

ALTER TABLE mprodacct ADD
  CONSTRAINT cacctschema_mproductacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mprodacct ADD
  CONSTRAINT m_product_m_product_acct FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mprodacct ADD
  CONSTRAINT paveragecostvariance_mproducta FOREIGN KEY (p_averagecostvariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT pburden_mproductacct FOREIGN KEY (p_burden_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT pcostadjustment_mproductacct FOREIGN KEY (p_costadjustment_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT pcostofproduction_mproductacct FOREIGN KEY (p_costofproduction_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT pfloorstock_mproductacct FOREIGN KEY (p_floorstock_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT pinventoryclearing_mproductacc FOREIGN KEY (p_inventoryclearing_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT plabor_mproductacct FOREIGN KEY (p_labor_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT pmethodchangevariance_mproduct FOREIGN KEY (p_methodchangevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT pmixvariance_mproductacct FOREIGN KEY (p_mixvariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT poutsideprocessing_mproductacc FOREIGN KEY (p_outsideprocessing_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT poverhead_mproductacct FOREIGN KEY (p_overhead_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT pratevariance_mproductacct FOREIGN KEY (p_ratevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT pscrap_mproductacct FOREIGN KEY (p_scrap_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT pusagevariance_mproductacct FOREIGN KEY (p_usagevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT pwip_mproductacct FOREIGN KEY (p_wip_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT vc_passet_mproduct FOREIGN KEY (p_asset_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT vc_pcogs_mproduct FOREIGN KEY (p_cogs_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT vc_pexpense_mproduct FOREIGN KEY (p_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT vc_pinvoicepv_mproduct FOREIGN KEY (p_invoicepricevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT vc_ppurchasepv_mproduct FOREIGN KEY (p_purchasepricevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT vc_prevenue_mproduct FOREIGN KEY (p_revenue_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT vc_ptdiscountgrant_mproduct FOREIGN KEY (p_tradediscountgrant_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodacct ADD
  CONSTRAINT vc_ptdiscountrec_mproduct FOREIGN KEY (p_tradediscountrec_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_product_bom : mprodbom
--

ALTER TABLE mprodbom ADD
  CONSTRAINT mproduct_bomproduct FOREIGN KEY (m_productbom_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodbom ADD
  CONSTRAINT mproduct_mproductbom FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_product_category : mprodcat
--

ALTER TABLE mprodcat ADD
  CONSTRAINT aassetgroup_mproductcategory FOREIGN KEY (a_asset_group_id)
      REFERENCES aasstgrp (a_asset_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcat ADD
  CONSTRAINT adprintcolor_mproductcategory FOREIGN KEY (ad_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcat ADD
  CONSTRAINT mproductcat_parentcat FOREIGN KEY (m_product_category_parent_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_product_category_acct : mprodcata
--

ALTER TABLE mprodcata ADD
  CONSTRAINT cacctschema_mprodcatacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mprodcata ADD
  CONSTRAINT mprodcat_mprodcatacct FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mprodcata ADD
  CONSTRAINT paveragecostvariance_mproductc FOREIGN KEY (p_averagecostvariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT pburden_mproductcategoryacct FOREIGN KEY (p_burden_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT pcostadjustment_mproductcatego FOREIGN KEY (p_costadjustment_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT pcostofproduction_mproductcate FOREIGN KEY (p_costofproduction_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT pfloorstock_mproductcategoryac FOREIGN KEY (p_floorstock_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT pinventoryclearing_mproductcat FOREIGN KEY (p_inventoryclearing_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT plabor_mproductcategoryacct FOREIGN KEY (p_labor_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT pmethodchangevariance_mprodcat FOREIGN KEY (p_methodchangevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT pmixvariance_mproductcategorya FOREIGN KEY (p_mixvariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT poutsideprocessing_mproductcat FOREIGN KEY (p_outsideprocessing_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT poverhead_mproductcategoryacct FOREIGN KEY (p_overhead_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT pratevariance_mproductcategory FOREIGN KEY (p_ratevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT pscrap_mproductcategoryacct FOREIGN KEY (p_scrap_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT pusagevariance_mproductcategor FOREIGN KEY (p_usagevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT pwip_mproductcategoryacct FOREIGN KEY (p_wip_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT vc_passet_mproductcategory FOREIGN KEY (p_asset_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT vc_pcogs_mproductcategory FOREIGN KEY (p_cogs_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT vc_pexpense_mproductcategory FOREIGN KEY (p_expense_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT vc_pinvoicepv_mproductcategory FOREIGN KEY (p_invoicepricevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT vc_ppurchasepv_mproductcategor FOREIGN KEY (p_purchasepricevariance_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT vc_prevenue_mproductcategory FOREIGN KEY (p_revenue_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT vc_ptdiscountgrant_mproductcat FOREIGN KEY (p_tradediscountgrant_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodcata ADD
  CONSTRAINT vc_ptdiscountrec_mproductcateg FOREIGN KEY (p_tradediscountrec_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_product_class : mprdcls
--

ALTER TABLE mprdcls ADD
  CONSTRAINT mproductclassparent_mproductcl FOREIGN KEY (m_product_class_parent_id)
      REFERENCES mprdcls (m_product_class_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_product_classification : mprdclsn
--

ALTER TABLE mprdclsn ADD
  CONSTRAINT mclassificationparent_mproduct FOREIGN KEY (m_classification_parent_id)
      REFERENCES mprdclsn (m_product_classification_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_product_costing : mprodcst
--

ALTER TABLE mprodcst ADD
  CONSTRAINT cacctschema_mproductcosting FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mprodcst ADD
  CONSTRAINT mproduct_mproductcosting FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_product_group : mprdgrp
--

ALTER TABLE mprdgrp ADD
  CONSTRAINT mproductgroupparent_mproductgr FOREIGN KEY (m_product_group_parent_id)
      REFERENCES mprdgrp (m_product_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_product_po : mprodpo
--

ALTER TABLE mprodpo ADD
  CONSTRAINT c_buspartner_m_product_po FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodpo ADD
  CONSTRAINT c_uom_m_product_po FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodpo ADD
  CONSTRAINT ccurrency_mproductpo FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodpo ADD
  CONSTRAINT m_product_productpo FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mprodpo ADD
  CONSTRAINT m_productpo_client FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodpo ADD
  CONSTRAINT m_productpo_org FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_product_qualitytest : mprdqtst
--

ALTER TABLE mprdqtst ADD
  CONSTRAINT mproduct_mproductqualitytest FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprdqtst ADD
  CONSTRAINT mqualitytest_mproductqualityte FOREIGN KEY (m_qualitytest_id)
      REFERENCES mqtst (m_qualitytest_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_product_trl : mprodt
--

ALTER TABLE mprodt ADD
  CONSTRAINT adlanguage_mproducttrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprodt ADD
  CONSTRAINT mproduct_mproducttrl FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_productdownload : mprddl
--

ALTER TABLE mprddl ADD
  CONSTRAINT mproduct_mproductdownload FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_production : mpdn
--

ALTER TABLE mpdn ADD
  CONSTRAINT adorg_mproduction FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdn ADD
  CONSTRAINT adorgtrx_mproduction FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdn ADD
  CONSTRAINT cactivity_mproduction FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdn ADD
  CONSTRAINT ccampaign_mproduction FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdn ADD
  CONSTRAINT cdoctype_mproduction FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdn ADD
  CONSTRAINT celementvalueuser1_mprod FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdn ADD
  CONSTRAINT celementvalueuser2_mprod FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdn ADD
  CONSTRAINT corderline_mproduction FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdn ADD
  CONSTRAINT cproject_mproduction FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdn ADD
  CONSTRAINT mproduct_mproduction FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdn ADD
  CONSTRAINT mproductionbatch_mproduction FOREIGN KEY (m_productionbatch_id)
      REFERENCES mprdbtch (m_productionbatch_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdn ADD
  CONSTRAINT reversal_mproduction FOREIGN KEY (reversal_id)
      REFERENCES mpdn (m_production_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdn ADD
  CONSTRAINT user3_mproduction FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdn ADD
  CONSTRAINT user4_mproduction FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_productionbatch : mprdbtch
--

ALTER TABLE mprdbtch ADD
  CONSTRAINT cactivity_mproductionbatch FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprdbtch ADD
  CONSTRAINT ccampaign_mproductionbatch FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprdbtch ADD
  CONSTRAINT cdoctype_mproductionbatch FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprdbtch ADD
  CONSTRAINT cproject_mproductionbatch FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprdbtch ADD
  CONSTRAINT mlocator_mproductionbatch FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprdbtch ADD
  CONSTRAINT mproduct_mproductionbatch FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprdbtch ADD
  CONSTRAINT user1_mproductionbatch FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprdbtch ADD
  CONSTRAINT user2_mproductionbatch FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_productionbatchline : mprdbtcln
--

ALTER TABLE mprdbtcln ADD
  CONSTRAINT mproduct_mproductionbatchline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprdbtcln ADD
  CONSTRAINT mproductionbatch_mproductionba FOREIGN KEY (m_productionbatch_id)
      REFERENCES mprdbtch (m_productionbatch_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_productionline : mpdnln
--

ALTER TABLE mpdnln ADD
  CONSTRAINT adorgtrx_mproductionline FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT cactivity_mproductionline FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT ccampaign_mproductionline FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT cproject_mproductionline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT cprojectphase_mproductionline FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT cprojecttask_mproductionline FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT mattrsetinst_mproductionline FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT mlocator_mproductionline FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT mproduct_mproductionline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT mproduction_mproductionline FOREIGN KEY (m_production_id)
      REFERENCES mpdn (m_production_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT mproductionplan_line FOREIGN KEY (m_productionplan_id)
      REFERENCES mpdnpln (m_productionplan_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mpdnln ADD
  CONSTRAINT reversalline_mproductionline FOREIGN KEY (reversalline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT user1_mproductionline FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT user2_mproductionline FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT user3_mproductionline FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnln ADD
  CONSTRAINT user4_mproductionline FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_productionlinema : mprdlnma
--

ALTER TABLE mprdlnma ADD
  CONSTRAINT masi_mproductionlinema FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mprdlnma ADD
  CONSTRAINT mproductionline_mplinema FOREIGN KEY (m_productionline_id)
      REFERENCES mpdnln (m_productionline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_productionplan : mpdnpln
--

ALTER TABLE mpdnpln ADD
  CONSTRAINT mlocator_mproductionplan FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnpln ADD
  CONSTRAINT mproduct_mproductionplan FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpdnpln ADD
  CONSTRAINT mproduction_plan FOREIGN KEY (m_production_id)
      REFERENCES mpdn (m_production_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_productoperation : mprdopn
--

ALTER TABLE mprdopn ADD
  CONSTRAINT mproduct_mproductoperation FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_productprice : mprodp
--

ALTER TABLE mprodp ADD
  CONSTRAINT mpricelistver_mproductprice FOREIGN KEY (m_pricelist_version_id)
      REFERENCES mplstver (m_pricelist_version_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mprodp ADD
  CONSTRAINT mproduct_mproductprice FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_productpricevendorbreak : mprdpvbrk
--

ALTER TABLE mprdpvbrk ADD
  CONSTRAINT cbpartner_mproductpricevendorb FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprdpvbrk ADD
  CONSTRAINT mpricelistversion_mproductpric FOREIGN KEY (m_pricelist_version_id)
      REFERENCES mplstver (m_pricelist_version_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mprdpvbrk ADD
  CONSTRAINT mproduct_mproductpricevendorbr FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_promotion : mpmn
--

ALTER TABLE mpmn ADD
  CONSTRAINT ccampaign_mpromotion FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_promotiondistribution : mpmndst
--

ALTER TABLE mpmndst ADD
  CONSTRAINT mpromotion_mpromotiondistribut FOREIGN KEY (m_promotion_id)
      REFERENCES mpmn (m_promotion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpmndst ADD
  CONSTRAINT mpromotionline_mpromotiondistr FOREIGN KEY (m_promotionline_id)
      REFERENCES mpmnln (m_promotionline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_promotiongroup : mpmngrp
--


--
-- Table : m_promotiongroupline : mpmngrpln
--

ALTER TABLE mpmngrpln ADD
  CONSTRAINT mproduct_mpromotiongroupline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpmngrpln ADD
  CONSTRAINT mpromotiongroup_mpromotiongrou FOREIGN KEY (m_promotiongroup_id)
      REFERENCES mpmngrp (m_promotiongroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_promotionline : mpmnln
--

ALTER TABLE mpmnln ADD
  CONSTRAINT mpromotion_mpromotionline FOREIGN KEY (m_promotion_id)
      REFERENCES mpmn (m_promotion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpmnln ADD
  CONSTRAINT mpromotiongroup_mpromotionline FOREIGN KEY (m_promotiongroup_id)
      REFERENCES mpmngrp (m_promotiongroup_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_promotionprecondition : mpmnpcnd
--

ALTER TABLE mpmnpcnd ADD
  CONSTRAINT cactivity_mpromotionpreconditi FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpmnpcnd ADD
  CONSTRAINT cbpartner_mpromotionpreconditi FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpmnpcnd ADD
  CONSTRAINT cbpgroup_mpromotionpreconditio FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpmnpcnd ADD
  CONSTRAINT mpricelist_mpromotionprecondit FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpmnpcnd ADD
  CONSTRAINT mpromotion_mpromotionprecondit FOREIGN KEY (m_promotion_id)
      REFERENCES mpmn (m_promotion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpmnpcnd ADD
  CONSTRAINT mwarehouse_mpromotionprecondit FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_promotionreward : mpmnrwd
--

ALTER TABLE mpmnrwd ADD
  CONSTRAINT ccharge_mpromotionreward FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpmnrwd ADD
  CONSTRAINT mpromotion_mpromotionreward FOREIGN KEY (m_promotion_id)
      REFERENCES mpmn (m_promotion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpmnrwd ADD
  CONSTRAINT mpromotiondistribution_mpromot FOREIGN KEY (m_promotiondistribution_id)
      REFERENCES mpmndst (m_promotiondistribution_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mpmnrwd ADD
  CONSTRAINT mtargetdistribution_mpromotion FOREIGN KEY (m_targetdistribution_id)
      REFERENCES mpmndst (m_promotiondistribution_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_qualitytest : mqtst
--


--
-- Table : m_qualitytestresult : mqtstrslt
--

ALTER TABLE mqtstrslt ADD
  CONSTRAINT mqualitytest_mqualitytestresul FOREIGN KEY (m_qualitytest_id)
      REFERENCES mqtst (m_qualitytest_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_relatedproduct : mrltprod
--

ALTER TABLE mrltprod ADD
  CONSTRAINT mproduct_mrelated_product FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mrltprod ADD
  CONSTRAINT mproduct_mrelatedproduct FOREIGN KEY (relatedproduct_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_replenish : mrplh
--

ALTER TABLE mrplh ADD
  CONSTRAINT m_product_replenish FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mrplh ADD
  CONSTRAINT m_warehouse_replenish FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mrplh ADD
  CONSTRAINT mlocator_mreplenish FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mrplh ADD
  CONSTRAINT mwarehousesource_mreplenish FOREIGN KEY (m_warehousesource_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_replenishplan : mrplpln
--

ALTER TABLE mrplpln ADD
  CONSTRAINT cdoctype_mreplenishplan FOREIGN KEY (c_doctype_po)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mrplpln ADD
  CONSTRAINT cdoctypeconfirmedor_mreplenish FOREIGN KEY (c_doctype_confirmedorder)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mrplpln ADD
  CONSTRAINT cdoctypeplannedor_mreplenishpl FOREIGN KEY (c_doctype_plannedorder)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mrplpln ADD
  CONSTRAINT cdoctyperequisit_mreplenishpla FOREIGN KEY (c_doctype_requisition)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mrplpln ADD
  CONSTRAINT mpricelist_mreplenishplan FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_replenishplanline : mrplplnln
--

ALTER TABLE mrplplnln ADD
  CONSTRAINT corder_mreplenishplanline FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mrplplnln ADD
  CONSTRAINT m_replenishplan_planline FOREIGN KEY (m_replenishplan_id)
      REFERENCES mrplpln (m_replenishplan_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mrplplnln ADD
  CONSTRAINT mproduct_mreplenishplanline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mrplplnln ADD
  CONSTRAINT mproductcategory_mreplenishpla FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mrplplnln ADD
  CONSTRAINT mproduction_mreplenishplanline FOREIGN KEY (m_production_id)
      REFERENCES mpdn (m_production_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mrplplnln ADD
  CONSTRAINT mrequisition_mreplenishplanlin FOREIGN KEY (m_requisition_id)
      REFERENCES mreq (m_requisition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_requisition : mreq
--

ALTER TABLE mreq ADD
  CONSTRAINT adorgtrx_mrequisition FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreq ADD
  CONSTRAINT aduser_mrequisition FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreq ADD
  CONSTRAINT cactivity_mrequisition FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreq ADD
  CONSTRAINT ccampaign_mrequisition FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreq ADD
  CONSTRAINT cdoctype_mrequisition FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreq ADD
  CONSTRAINT cproject_mrequisition FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreq ADD
  CONSTRAINT mprocelist_mrequisition FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreq ADD
  CONSTRAINT mwarehouse_mrequisition FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreq ADD
  CONSTRAINT user1_mrequisition FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreq ADD
  CONSTRAINT user2_mrequisition FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreq ADD
  CONSTRAINT user3_mrequisition FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreq ADD
  CONSTRAINT user4_mrequisition FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_requisitionline : mreqln
--

ALTER TABLE mreqln ADD
  CONSTRAINT adorgtrx_mrequisitionline FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT cactivity_mrequisitionline FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT cbpartner_mrequisitionline FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT ccampaign_mrequisitionline FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT ccharge_mrequisitionline FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT corderline_mrequisitionline FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT cproject_mrequisitionline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT cprojectphase_mrequisitionline FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT cprojecttask_mrequisitionline FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT cuom_mrequisitionline FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT mattributesetinstance_mrequisi FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT mproduct_mrequisitionline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT mrequisition_mrequisitionline FOREIGN KEY (m_requisition_id)
      REFERENCES mreq (m_requisition_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mreqln ADD
  CONSTRAINT user1_mrequisitionline FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT user2_mrequisitionline FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT user3_mrequisitionline FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mreqln ADD
  CONSTRAINT user4_mrequisitionline FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_rma : m_rma
--

ALTER TABLE m_rma ADD
  CONSTRAINT cbpartner_mrma FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_rma ADD
  CONSTRAINT ccurrency_mrma FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_rma ADD
  CONSTRAINT cdoctype_mrma FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_rma ADD
  CONSTRAINT corder_mrma FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_rma ADD
  CONSTRAINT minout_mrma FOREIGN KEY (inout_id)
      REFERENCES m_inout (m_inout_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_rma ADD
  CONSTRAINT mrmatype_mrma FOREIGN KEY (m_rmatype_id)
      REFERENCES m_rmatype (m_rmatype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_rma ADD
  CONSTRAINT refrma_mrma FOREIGN KEY (ref_rma_id)
      REFERENCES m_rma (m_rma_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_rma ADD
  CONSTRAINT salesrep_mrma FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_rmaline : m_rmaline
--

ALTER TABLE m_rmaline ADD
  CONSTRAINT ccharge_mrmaline FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_rmaline ADD
  CONSTRAINT minoutline_mrmaline FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_rmaline ADD
  CONSTRAINT mrma_mrmaline FOREIGN KEY (m_rma_id)
      REFERENCES m_rma (m_rma_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_rmaline ADD
  CONSTRAINT refrmaline_mrmaline FOREIGN KEY (ref_rmaline_id)
      REFERENCES m_rmaline (m_rmaline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.m_rmaline
  OWNER TO adempiere;

--
-- Table : m_rmatype : m_rmatype
--


--
-- Table : m_sernoctl : m_sernoctl
--


--
-- Table : m_sernoctlexclude : msnctle
--

ALTER TABLE msnctle ADD
  CONSTRAINT adtable_msernoctlexclude FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE msnctle ADD
  CONSTRAINT msernoctl_msernoctlexclude FOREIGN KEY (m_sernoctl_id)
      REFERENCES m_sernoctl (m_sernoctl_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_shipper : m_shipper
--

ALTER TABLE m_shipper ADD
  CONSTRAINT cbpartner_mshipper FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_storage : m_storage
--

ALTER TABLE m_storage ADD
  CONSTRAINT m_item_storage_client FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_storage ADD
  CONSTRAINT m_item_storage_org FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_storage ADD
  CONSTRAINT m_locator_storage FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE m_storage ADD
  CONSTRAINT mattrsetinst_mstorage FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE m_storage ADD
  CONSTRAINT mproduct_storage FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_substitute : msub
--

ALTER TABLE msub ADD
  CONSTRAINT m_substitute_client FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE msub ADD
  CONSTRAINT m_substitute_org FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE msub ADD
  CONSTRAINT mproduct_substitute FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE msub ADD
  CONSTRAINT mproduct_substitutesub FOREIGN KEY (substitute_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_transaction : mtrn
--

ALTER TABLE mtrn ADD
  CONSTRAINT cprojectissue_mtransaction FOREIGN KEY (c_projectissue_id)
      REFERENCES cprojiss (c_projectissue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrn ADD
  CONSTRAINT mattrsetinst_mtransaction FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrn ADD
  CONSTRAINT minoutline_mtransaction FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrn ADD
  CONSTRAINT minventoryline_mtransaction FOREIGN KEY (m_inventoryline_id)
      REFERENCES mivtln (m_inventoryline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrn ADD
  CONSTRAINT mlocator_minventorycount FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrn ADD
  CONSTRAINT mmovementline_mtransaction FOREIGN KEY (m_movementline_id)
      REFERENCES mmovln (m_movementline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrn ADD
  CONSTRAINT mproduct_minventorycount FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrn ADD
  CONSTRAINT mproductionline_mtransaction FOREIGN KEY (m_productionline_id)
      REFERENCES mpdnln (m_productionline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrn ADD
  CONSTRAINT ppcostcollector_mtransaction FOREIGN KEY (pp_cost_collector_id)
      REFERENCES ppcstcol (pp_cost_collector_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_transactionallocation : mtrnalc
--

ALTER TABLE mtrnalc ADD
  CONSTRAINT mattributesetinst_mtrxalloc FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrnalc ADD
  CONSTRAINT minoutline_mtrxalloc FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrnalc ADD
  CONSTRAINT minoutlineout_mtrxalloc FOREIGN KEY (out_m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrnalc ADD
  CONSTRAINT minventoryline_mtrxalloc FOREIGN KEY (m_inventoryline_id)
      REFERENCES mivtln (m_inventoryline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrnalc ADD
  CONSTRAINT minventorylineout_mtrxalloc FOREIGN KEY (out_m_inventoryline_id)
      REFERENCES mivtln (m_inventoryline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrnalc ADD
  CONSTRAINT mproduct_mtrxalloc FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrnalc ADD
  CONSTRAINT mproductionline_mtrxalloc FOREIGN KEY (m_productionline_id)
      REFERENCES mpdnln (m_productionline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrnalc ADD
  CONSTRAINT mproductionlineout_mtrxalloc FOREIGN KEY (out_m_productionline_id)
      REFERENCES mpdnln (m_productionline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrnalc ADD
  CONSTRAINT mtransactionout_mtrxalloc FOREIGN KEY (out_m_transaction_id)
      REFERENCES mtrn (m_transaction_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mtrnalc ADD
  CONSTRAINT mttransaction_mtrxalloc FOREIGN KEY (m_transaction_id)
      REFERENCES mtrn (m_transaction_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : m_warehouse : mwhse
--

ALTER TABLE mwhse ADD
  CONSTRAINT c_location_warehouse FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mwhse ADD
  CONSTRAINT m_warehouse_client FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mwhse ADD
  CONSTRAINT m_warehouse_org FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mwhse ADD
  CONSTRAINT mwarehousesource_mwarehouse FOREIGN KEY (m_warehousesource_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : m_warehouse_acct : mwhsea
--

ALTER TABLE mwhsea ADD
  CONSTRAINT cacctschema_mwarehouseacct FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mwhsea ADD
  CONSTRAINT m_warehouse_warehouse_acct FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE mwhsea ADD
  CONSTRAINT vc_wdifferences_mwarehouse FOREIGN KEY (w_differences_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mwhsea ADD
  CONSTRAINT vc_winvactualadjust_mwarehouse FOREIGN KEY (w_invactualadjust_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mwhsea ADD
  CONSTRAINT vc_winventory_mwarehouse FOREIGN KEY (w_inventory_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE mwhsea ADD
  CONSTRAINT vc_wrevaluation_mwarehouse FOREIGN KEY (w_revaluation_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_achievement : paach
--

ALTER TABLE paach ADD
  CONSTRAINT pameasure_paachievement FOREIGN KEY (pa_measure_id)
      REFERENCES pa_measure (pa_measure_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_benchmark : pabmrk
--


--
-- Table : pa_benchmarkdata : pabmrkdta
--

ALTER TABLE pabmrkdta ADD
  CONSTRAINT pabenchmark_pabenchmarkdata FOREIGN KEY (pa_benchmark_id)
      REFERENCES pabmrk (pa_benchmark_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : pa_colorschema : pacscm
--

ALTER TABLE pacscm ADD
  CONSTRAINT adprintcolor1_pacolorschema FOREIGN KEY (ad_printcolor1_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pacscm ADD
  CONSTRAINT adprintcolor2_pacolorschema FOREIGN KEY (ad_printcolor2_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pacscm ADD
  CONSTRAINT adprintcolor3_pacolorschema FOREIGN KEY (ad_printcolor3_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pacscm ADD
  CONSTRAINT adprintcolor4_pacolorschema FOREIGN KEY (ad_printcolor4_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pacscm ADD
  CONSTRAINT entityt_pacolorschema FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_dashboardcontent : padbcnt
--

ALTER TABLE padbcnt ADD
  CONSTRAINT adbrowse_padashboardcontent FOREIGN KEY (ad_browse_id)
      REFERENCES ad_browse (ad_browse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padbcnt ADD
  CONSTRAINT adwindow_padashboardcontent FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padbcnt ADD
  CONSTRAINT pagoal_padashboardcontent FOREIGN KEY (pa_goal_id)
      REFERENCES pa_goal (pa_goal_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padbcnt ADD
  CONSTRAINT zoomfield_padashboardcontent FOREIGN KEY (zoom_field_id)
      REFERENCES adbrwfld (ad_browse_field_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padbcnt ADD
  CONSTRAINT zoomtab_padashboardcontent FOREIGN KEY (zoom_tab_id)
      REFERENCES ad_tab (ad_tab_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padbcnt ADD
  CONSTRAINT zoomwindow_padashboardcontent FOREIGN KEY (zoom_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_dashboardcontent_trl : padbcntt
--

ALTER TABLE padbcntt ADD
  CONSTRAINT adlangu_padashboardcontenttrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padbcntt ADD
  CONSTRAINT padashboardcontent_padashboard FOREIGN KEY (pa_dashboardcontent_id)
      REFERENCES padbcnt (pa_dashboardcontent_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_documentstatus : padocsts
--

ALTER TABLE padocsts ADD
  CONSTRAINT adform_padocumentstatus FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padocsts ADD
  CONSTRAINT adrole_padocumentstatus FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padocsts ADD
  CONSTRAINT adtable_padocumentstatus FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padocsts ADD
  CONSTRAINT aduser_padocumentstatus FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padocsts ADD
  CONSTRAINT adwindow_padocumentstatus FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padocsts ADD
  CONSTRAINT cproject_padocumentstatus FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padocsts ADD
  CONSTRAINT nameprintcolor_padocumentstatu FOREIGN KEY (name_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padocsts ADD
  CONSTRAINT nameprintfont_padocumentstatus FOREIGN KEY (name_printfont_id)
      REFERENCES adprtfnt (ad_printfont_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padocsts ADD
  CONSTRAINT numberprintcolor_padocumentsta FOREIGN KEY (number_printcolor_id)
      REFERENCES adprtclr (ad_printcolor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE padocsts ADD
  CONSTRAINT numberprintfont_padocumentstat FOREIGN KEY (number_printfont_id)
      REFERENCES adprtfnt (ad_printfont_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_goal : pa_goal
--

ALTER TABLE pa_goal ADD
  CONSTRAINT adrole_pagoal FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_goal ADD
  CONSTRAINT aduser_pagoal FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_goal ADD
  CONSTRAINT pacolorschema_pagoal FOREIGN KEY (pa_colorschema_id)
      REFERENCES pacscm (pa_colorschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_goal ADD
  CONSTRAINT pagoalparent_pagoal FOREIGN KEY (pa_goalparent_id)
      REFERENCES pa_goal (pa_goal_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_goal ADD
  CONSTRAINT pameasure_pagoal FOREIGN KEY (pa_measure_id)
      REFERENCES pa_measure (pa_measure_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_goalrestriction : pagrst
--

ALTER TABLE pagrst ADD
  CONSTRAINT adorg2_pagoalrestriction FOREIGN KEY (org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pagrst ADD
  CONSTRAINT adorg_pagoalrestriction FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pagrst ADD
  CONSTRAINT cbpartner_pagoalrestriction FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pagrst ADD
  CONSTRAINT cbpgroup_pagoalrestriction FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pagrst ADD
  CONSTRAINT mproduct_pagoalrestriction FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pagrst ADD
  CONSTRAINT mproductcat_pagoalrestriction FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pagrst ADD
  CONSTRAINT pagoal_pagoalrestriction FOREIGN KEY (pa_goal_id)
      REFERENCES pa_goal (pa_goal_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_hierarchy : paheir
--

ALTER TABLE paheir ADD
  CONSTRAINT adtreeaccount_pahierarchy FOREIGN KEY (ad_tree_account_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE paheir ADD
  CONSTRAINT adtreeactivity_pahierarchy FOREIGN KEY (ad_tree_activity_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE paheir ADD
  CONSTRAINT adtreebpartner_pahierarchy FOREIGN KEY (ad_tree_bpartner_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE paheir ADD
  CONSTRAINT adtreecampaign_pahierarchy FOREIGN KEY (ad_tree_campaign_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE paheir ADD
  CONSTRAINT adtreeorg_pahierarchy FOREIGN KEY (ad_tree_org_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE paheir ADD
  CONSTRAINT adtreeproduct_pahierarchy FOREIGN KEY (ad_tree_product_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE paheir ADD
  CONSTRAINT adtreeproject_pahierarchy FOREIGN KEY (ad_tree_project_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE paheir ADD
  CONSTRAINT adtreesr_pahierarchy FOREIGN KEY (ad_tree_salesregion_id)
      REFERENCES ad_tree (ad_tree_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_measure : pa_measure
--

ALTER TABLE pa_measure ADD
  CONSTRAINT cprojecttype_pameasure FOREIGN KEY (c_projecttype_id)
      REFERENCES cprojtyp (c_projecttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_measure ADD
  CONSTRAINT pabenchmark_pameasure FOREIGN KEY (pa_benchmark_id)
      REFERENCES pabmrk (pa_benchmark_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_measure ADD
  CONSTRAINT pahierarchy_pameasure FOREIGN KEY (pa_hierarchy_id)
      REFERENCES paheir (pa_hierarchy_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_measure ADD
  CONSTRAINT pameasurecalc_pameasure FOREIGN KEY (pa_measurecalc_id)
      REFERENCES pamclc (pa_measurecalc_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_measure ADD
  CONSTRAINT paratio_pameasure FOREIGN KEY (pa_ratio_id)
      REFERENCES pa_ratio (pa_ratio_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_measure ADD
  CONSTRAINT rrequesttype_pameasure FOREIGN KEY (r_requesttype_id)
      REFERENCES rreqtyp (r_requesttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_measurecalc : pamclc
--

ALTER TABLE pamclc ADD
  CONSTRAINT adtable_pameasurecalc FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pamclc ADD
  CONSTRAINT entityt_pameasurecalc FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_ratio : pa_ratio
--

ALTER TABLE pa_ratio ADD
  CONSTRAINT cacctschema_paratio FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_ratioelement : parelm
--

ALTER TABLE parelm ADD
  CONSTRAINT celementvalue_paratioelement FOREIGN KEY (account_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parelm ADD
  CONSTRAINT pameasurecalc_paratioelement FOREIGN KEY (pa_measurecalc_id)
      REFERENCES pamclc (pa_measurecalc_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parelm ADD
  CONSTRAINT paratio_paratioelement FOREIGN KEY (pa_ratio_id)
      REFERENCES pa_ratio (pa_ratio_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parelm ADD
  CONSTRAINT paratioused_paratioelement FOREIGN KEY (pa_ratioused_id)
      REFERENCES pa_ratio (pa_ratio_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_report : pa_report
--

ALTER TABLE pa_report ADD
  CONSTRAINT adorg_pareport FOREIGN KEY (ad_org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE pa_report ADD
  CONSTRAINT adprintformat_pareport FOREIGN KEY (ad_printformat_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE pa_report ADD
  CONSTRAINT adprintformatheader_pareport FOREIGN KEY (ad_printformatheader_id)
      REFERENCES adprtfmt (ad_printformat_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_report ADD
  CONSTRAINT cacctschema_pareport FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_report ADD
  CONSTRAINT ccalendar_pareport FOREIGN KEY (c_calendar_id)
      REFERENCES c_calendar (c_calendar_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_report ADD
  CONSTRAINT jasperprocess_pareport FOREIGN KEY (jasperprocess_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_report ADD
  CONSTRAINT pareport_columnset FOREIGN KEY (pa_reportcolumnset_id)
      REFERENCES parptcols (pa_reportcolumnset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_report ADD
  CONSTRAINT pareport_lineset FOREIGN KEY (pa_reportlineset_id)
      REFERENCES parptlns (pa_reportlineset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pa_report ADD
  CONSTRAINT pareportcube_pareport FOREIGN KEY (pa_reportcube_id)
      REFERENCES parptcbe (pa_reportcube_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_reportcolumn : parptcol
--

ALTER TABLE parptcol ADD
  CONSTRAINT adorg_pareportcolumn FOREIGN KEY (org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT adorgtrx_pareportcolumn FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT cactivity_pareportcolumn FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT cbpartner_pareportcolumn FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT ccampaign_pareportcolumn FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT ccurrency_pareportcolumn FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT celementvalue_pareportcolumn FOREIGN KEY (c_elementvalue_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT clocation_pareportcolumn FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT cproject_pareportcolumn FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT csalesregion_pareportcolumn FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT glbudget_pareportcolumn FOREIGN KEY (gl_budget_id)
      REFERENCES gl_budget (gl_budget_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT mproduct_pareportcolumn FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT pareportcolumn_oper1 FOREIGN KEY (oper_1_id)
      REFERENCES parptcol (pa_reportcolumn_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE parptcol ADD
  CONSTRAINT pareportcolumn_oper2 FOREIGN KEY (oper_2_id)
      REFERENCES parptcol (pa_reportcolumn_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE parptcol ADD
  CONSTRAINT pareportcolumnset_column FOREIGN KEY (pa_reportcolumnset_id)
      REFERENCES parptcols (pa_reportcolumnset_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE parptcol ADD
  CONSTRAINT user1_pareportcolumn FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT user2_pareportcolumn FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT user3_pareportcolumn FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptcol ADD
  CONSTRAINT user4_pareportcolumn FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_reportcolumnset : parptcols
--


--
-- Table : pa_reportcube : parptcbe
--

ALTER TABLE parptcbe ADD
  CONSTRAINT ccalendar_pareportcube FOREIGN KEY (c_calendar_id)
      REFERENCES c_calendar (c_calendar_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_reportline : parptln
--

ALTER TABLE parptln ADD
  CONSTRAINT glbudget_pareportline FOREIGN KEY (gl_budget_id)
      REFERENCES gl_budget (gl_budget_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptln ADD
  CONSTRAINT pareportline_oper1 FOREIGN KEY (oper_1_id)
      REFERENCES parptln (pa_reportline_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE parptln ADD
  CONSTRAINT pareportline_oper2 FOREIGN KEY (oper_2_id)
      REFERENCES parptln (pa_reportline_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE parptln ADD
  CONSTRAINT pareportline_parent FOREIGN KEY (parent_id)
      REFERENCES parptln (pa_reportline_id)
      ON UPDATE NO ACTION ON DELETE SET NULL ;
ALTER TABLE parptln ADD
  CONSTRAINT pareportlineset_line FOREIGN KEY (pa_reportlineset_id)
      REFERENCES parptlns (pa_reportlineset_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : pa_reportlineset : parptlns
--


--
-- Table : pa_reportsource : parptsrc
--

ALTER TABLE parptsrc ADD
  CONSTRAINT adorg_pareportsource FOREIGN KEY (org_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT adorgtrx_pareportsource FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT cactivity_pareportsource FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT cbpartner_pareportsource FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT ccampaign_pareportsource FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT celementvalue_pareportsource FOREIGN KEY (c_elementvalue_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT clocation_pareportsource FOREIGN KEY (c_location_id)
      REFERENCES c_location (c_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT cproject_pareportsource FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT csalesregion_pareportsource FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT mproduct_pareportsource FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT pa_reportcolumn_pareportsource FOREIGN KEY (pa_reportcolumn_id)
      REFERENCES parptcol (pa_reportcolumn_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE parptsrc ADD
  CONSTRAINT pareportcolumn_pareportsource FOREIGN KEY (pa_reportcolumn_id)
      REFERENCES parptcol (pa_reportcolumn_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT pareportline_pareportsource FOREIGN KEY (pa_reportline_id)
      REFERENCES parptln (pa_reportline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE parptsrc ADD
  CONSTRAINT user1_pareportsource FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT user2_pareportsource FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT user3_pareportsource FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE parptsrc ADD
  CONSTRAINT user4_pareportsource FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_sla_criteria : paslacrit
--


--
-- Table : pa_sla_goal : paslag
--

ALTER TABLE paslag ADD
  CONSTRAINT cbpartner_paslagoal FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE paslag ADD
  CONSTRAINT paslacriteria_paslagoal FOREIGN KEY (pa_sla_criteria_id)
      REFERENCES paslacrit (pa_sla_criteria_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pa_sla_measure : paslam
--

ALTER TABLE paslam ADD
  CONSTRAINT adtable_paslameasure FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE paslam ADD
  CONSTRAINT paslagoal_paslameasure FOREIGN KEY (pa_sla_goal_id)
      REFERENCES paslag (pa_sla_goal_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_calendar : ppcal
--


--
-- Table : pp_cost_collector : ppcstcol
--

ALTER TABLE ppcstcol ADD
  CONSTRAINT adorgtrx_ppcostcollector FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT aduser_ppcostcollector FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT cactivity_ppcostcollector FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT ccampaign_ppcostcollector FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT cdoctype_ppcostcollector FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT cdoctypetarget_ppcostcollector FOREIGN KEY (c_doctypetarget_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT cproject_ppcostcollector FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT cuom_ppcostcollector FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT mattributesetinstance_ppcostco FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT mlocator_ppcostcollector FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT mproduct_ppcostcollector FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT mwarehouse_ppcostcollector FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT pporder_ppcostcollector FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT pporderbomline_ppcostcollector FOREIGN KEY (pp_order_bomline_id)
      REFERENCES ppordboml (pp_order_bomline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT ppordernode_ppcostcollector FOREIGN KEY (pp_order_node_id)
      REFERENCES ppordn (pp_order_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT pporderworkflow_ppcostcollecto FOREIGN KEY (pp_order_workflow_id)
      REFERENCES ppordwf (pp_order_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT reversal_ppcostcollector FOREIGN KEY (reversal_id)
      REFERENCES ppcstcol (pp_cost_collector_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT sresource_ppcostcollector FOREIGN KEY (s_resource_id)
      REFERENCES s_resource (s_resource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT user1_ppcostcollector FOREIGN KEY (user1_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT user2_ppcostcollector FOREIGN KEY (user2_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT user3_ppcostcollector FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcol ADD
  CONSTRAINT user4_ppcostcollector FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_cost_collectorma : ppcstcolrm
--

ALTER TABLE ppcstcolrm ADD
  CONSTRAINT mattributesetinstance_ppcostma FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppcstcolrm ADD
  CONSTRAINT ppcostcollector_ppccma FOREIGN KEY (pp_cost_collector_id)
      REFERENCES ppcstcol (pp_cost_collector_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_forecastdefinition : ppfstdef
--


--
-- Table : pp_forecastdefinitionline : ppfsdefln
--

ALTER TABLE ppfsdefln ADD
  CONSTRAINT cbpartner_ppforecastdefinition FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsdefln ADD
  CONSTRAINT cbpgroup_ppforecastdefinitionl FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsdefln ADD
  CONSTRAINT ccampaign_ppforecastdefinition FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsdefln ADD
  CONSTRAINT csalesregion_ppforecastdefinit FOREIGN KEY (c_salesregion_id)
      REFERENCES csrgn (c_salesregion_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsdefln ADD
  CONSTRAINT mproduct_ppforecastdefinitionl FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsdefln ADD
  CONSTRAINT mproductcategory_ppforecastdef FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsdefln ADD
  CONSTRAINT mproductclass_ppforecastdefini FOREIGN KEY (m_product_class_id)
      REFERENCES mprdcls (m_product_class_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsdefln ADD
  CONSTRAINT mproductclassification_ppforec FOREIGN KEY (m_product_classification_id)
      REFERENCES mprdclsn (m_product_classification_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsdefln ADD
  CONSTRAINT mproductgroup_ppforecastdefini FOREIGN KEY (m_product_group_id)
      REFERENCES mprdgrp (m_product_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsdefln ADD
  CONSTRAINT ppforecastdefinition_ppfdline FOREIGN KEY (pp_forecastdefinition_id)
      REFERENCES ppfstdef (pp_forecastdefinition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_forecastrule : ppfsr
--

ALTER TABLE ppfsr ADD
  CONSTRAINT adrule_ppforecastrule FOREIGN KEY (ad_rule_id)
      REFERENCES ad_rule (ad_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_forecastrun : ppfsrun
--

ALTER TABLE ppfsrun ADD
  CONSTRAINT mwarehouse_ppforecastrun FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrun ADD
  CONSTRAINT mwarehousesource_ppforecastrun FOREIGN KEY (m_warehousesource_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrun ADD
  CONSTRAINT ppcalendar_ppforecastrun FOREIGN KEY (pp_calendar_id)
      REFERENCES ppcal (pp_calendar_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrun ADD
  CONSTRAINT ppforecastdefinition_ppfrun FOREIGN KEY (pp_forecastdefinition_id)
      REFERENCES ppfstdef (pp_forecastdefinition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrun ADD
  CONSTRAINT ppforecastrule_ppforecastrun FOREIGN KEY (pp_forecastrule_id)
      REFERENCES ppfsr (pp_forecastrule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrun ADD
  CONSTRAINT ppperioddefinition_ppforecastr FOREIGN KEY (pp_perioddefinition_id)
      REFERENCES pppddfn (pp_perioddefinition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrun ADD
  CONSTRAINT refdefinitionperiod_ppforecast FOREIGN KEY (ref_definitionperiod_id)
      REFERENCES pppddfn (pp_perioddefinition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_forecastrundetail : ppfsrundt
--

ALTER TABLE ppfsrundt ADD
  CONSTRAINT ppforecastrun_ppforecastrundet FOREIGN KEY (pp_forecastrun_id)
      REFERENCES ppfsrun (pp_forecastrun_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrundt ADD
  CONSTRAINT ppforecastrunmaster_ppfrundet FOREIGN KEY (pp_forecastrunmaster_id)
      REFERENCES ppfsrunmst (pp_forecastrunmaster_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrundt ADD
  CONSTRAINT ppperiod_ppforecastrundetail FOREIGN KEY (pp_period_id)
      REFERENCES pp_period (pp_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_forecastrunline : ppfsrunln
--

ALTER TABLE ppfsrunln ADD
  CONSTRAINT csaleshistory_ppforecastrunlin FOREIGN KEY (c_saleshistory_id)
      REFERENCES cslshst (c_saleshistory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrunln ADD
  CONSTRAINT ppforecastrun_ppforecastrunlin FOREIGN KEY (pp_forecastrun_id)
      REFERENCES ppfsrun (pp_forecastrun_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrunln ADD
  CONSTRAINT ppforecastrundetail_ppforecast FOREIGN KEY (pp_forecastrundetail_id)
      REFERENCES ppfsrundt (pp_forecastrundetail_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrunln ADD
  CONSTRAINT ppperiod_ppforecastrunline FOREIGN KEY (pp_period_id)
      REFERENCES pp_period (pp_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_forecastrunmaster : ppfsrunmst
--

ALTER TABLE ppfsrunmst ADD
  CONSTRAINT mproduct_ppforecastrunmaster FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrunmst ADD
  CONSTRAINT mwarehouse_ppforecastrunmaster FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrunmst ADD
  CONSTRAINT ppforecastdefinitionline_ppfor FOREIGN KEY (pp_forecastdefinitionline_id)
      REFERENCES ppfsdefln (pp_forecastdefinitionline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrunmst ADD
  CONSTRAINT ppforecastrun_ppforecastrunmas FOREIGN KEY (pp_forecastrun_id)
      REFERENCES ppfsrun (pp_forecastrun_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_forecastrunresult : ppfsrunrt
--

ALTER TABLE ppfsrunrt ADD
  CONSTRAINT ppforecastrun_ppforecastrunres FOREIGN KEY (pp_forecastrun_id)
      REFERENCES ppfsrun (pp_forecastrun_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrunrt ADD
  CONSTRAINT ppforecastrunmaster_ppforecast FOREIGN KEY (pp_forecastrunmaster_id)
      REFERENCES ppfsrunmst (pp_forecastrunmaster_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppfsrunrt ADD
  CONSTRAINT ppperiod_ppforecastrunresult FOREIGN KEY (pp_period_id)
      REFERENCES pp_period (pp_period_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_mrp : pp_mrp
--

ALTER TABLE pp_mrp ADD
  CONSTRAINT cbpartner_ppmrp FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT corder_ppmrp FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT corderline_ppmrp FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT cproject_ppmrp FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT cprojectphase_ppmrp FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT cprojecttask_ppmrp FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT ddorder_ppmrp FOREIGN KEY (dd_order_id)
      REFERENCES dd_order (dd_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT ddorderline_ppmrp FOREIGN KEY (dd_orderline_id)
      REFERENCES ddordln (dd_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT mforecast_ppmrp FOREIGN KEY (m_forecast_id)
      REFERENCES m_forecast (m_forecast_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT mforecastline_ppmrp FOREIGN KEY (m_forecastline_id)
      REFERENCES mfcstln (m_forecastline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT mproduct_ppmrp FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT mrequisition_ppmrp FOREIGN KEY (m_requisition_id)
      REFERENCES mreq (m_requisition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT mrequisitionline_ppmrp FOREIGN KEY (m_requisitionline_id)
      REFERENCES mreqln (m_requisitionline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT mwarehouse_ppmrp FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT planner_ppmrp FOREIGN KEY (planner_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT pporder_ppmrp FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT pporderbomline_ppmrp FOREIGN KEY (pp_order_bomline_id)
      REFERENCES ppordboml (pp_order_bomline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_mrp ADD
  CONSTRAINT sresource_ppmrp FOREIGN KEY (s_resource_id)
      REFERENCES s_resource (s_resource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_mrp_detail : ppmrpdet
--

ALTER TABLE ppmrpdet ADD
  CONSTRAINT mrpdemand_ppmrpdetail FOREIGN KEY (mrp_demand_id)
      REFERENCES pp_mrp (pp_mrp_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ppmrpdet ADD
  CONSTRAINT mrpsupply_ppmrpdetail FOREIGN KEY (mrp_supply_id)
      REFERENCES pp_mrp (pp_mrp_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : pp_order : pp_order
--

ALTER TABLE pp_order ADD
  CONSTRAINT adorgtrx_pporder FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT adworkflow_pporder FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT cactivity_pporder FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT ccampaign_pporder FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT cdoctype_pporder FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT cdoctypetarget_pporder FOREIGN KEY (c_doctypetarget_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT corderline_pporder FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT cproject_pporder FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT cprojectphase_pporder FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT cprojecttask_pporder FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT cuom_pporder FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT mattributesetinstance_pporder FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT mfreightcategory_pporder FOREIGN KEY (m_freightcategory_id)
      REFERENCES mfhtcat (m_freightcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT mproduct_pporder FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT mshipper_pporder FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT mwarehouse_pporder FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT planner_pporder FOREIGN KEY (planner_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT ppproductbom_pporder FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT sresource_pporder FOREIGN KEY (s_resource_id)
      REFERENCES s_resource (s_resource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT user1_pporder FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT user2_pporder FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT user3_pporder FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE pp_order ADD
  CONSTRAINT user4_pporder FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_order_bom : ppordbom
--

ALTER TABLE ppordbom ADD
  CONSTRAINT cuom_pporderbom FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordbom ADD
  CONSTRAINT mattributesetinstance_pporderb FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordbom ADD
  CONSTRAINT mchangenotice_pporderbom FOREIGN KEY (m_changenotice_id)
      REFERENCES mchgntc (m_changenotice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordbom ADD
  CONSTRAINT mproduct_pporderbom FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordbom ADD
  CONSTRAINT pporder_pporderbom FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_order_bom_trl : ppordbomt
--

ALTER TABLE ppordbomt ADD
  CONSTRAINT adlangu_pporderbomtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordbomt ADD
  CONSTRAINT pporderbom_pporderbomtrl FOREIGN KEY (pp_order_bom_id)
      REFERENCES ppordbom (pp_order_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_order_bomline : ppordboml
--

ALTER TABLE ppordboml ADD
  CONSTRAINT aduser_pporderbomline FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordboml ADD
  CONSTRAINT cuom_pporderbomline FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordboml ADD
  CONSTRAINT mattributesetinstance_ppordbl FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordboml ADD
  CONSTRAINT mchangenotice_pporderbomline FOREIGN KEY (m_changenotice_id)
      REFERENCES mchgntc (m_changenotice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordboml ADD
  CONSTRAINT mlocator_pporderbomline FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordboml ADD
  CONSTRAINT mproduct_pporderbomline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordboml ADD
  CONSTRAINT mwarehouse_pporderbomline FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordboml ADD
  CONSTRAINT pporder_pporderbomline FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordboml ADD
  CONSTRAINT pporderbom_pporderbomline FOREIGN KEY (pp_order_bom_id)
      REFERENCES ppordbom (pp_order_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_order_bomline_trl : ppordbomlt
--

ALTER TABLE ppordbomlt ADD
  CONSTRAINT adlangu_pporderbomlinetrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordbomlt ADD
  CONSTRAINT pporderbomline_pporderbomlinet FOREIGN KEY (pp_order_bomline_id)
      REFERENCES ppordboml (pp_order_bomline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_order_cost : ppordcst
--

ALTER TABLE ppordcst ADD
  CONSTRAINT adworkflow_ppordercost FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordcst ADD
  CONSTRAINT cacctschema_ppordercost FOREIGN KEY (c_acctschema_id)
      REFERENCES caccs (c_acctschema_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordcst ADD
  CONSTRAINT mattributesetinstance_pporderc FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordcst ADD
  CONSTRAINT mcostelement_ppordercost FOREIGN KEY (m_costelement_id)
      REFERENCES mcstelm (m_costelement_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordcst ADD
  CONSTRAINT mcosttype_ppordercost FOREIGN KEY (m_costtype_id)
      REFERENCES m_costtype (m_costtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordcst ADD
  CONSTRAINT mproduct_ppordercost FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordcst ADD
  CONSTRAINT pporder_ppordercost FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_order_node : ppordn
--

ALTER TABLE ppordn ADD
  CONSTRAINT adcolumn_ppordernode FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT adform_ppordernode FOREIGN KEY (ad_form_id)
      REFERENCES ad_form (ad_form_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT adimage_ppordernode FOREIGN KEY (ad_image_id)
      REFERENCES ad_image (ad_image_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT adprocess_ppordernode FOREIGN KEY (ad_process_id)
      REFERENCES ad_process (ad_process_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT adtask_ppordernode FOREIGN KEY (ad_task_id)
      REFERENCES ad_task (ad_task_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT adwfblock_ppordernode FOREIGN KEY (ad_wf_block_id)
      REFERENCES adwfblk (ad_wf_block_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT adwfnode_ppordernode FOREIGN KEY (ad_wf_node_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT adwfresponsible_ppordernode FOREIGN KEY (ad_wf_responsible_id)
      REFERENCES adwfrsp (ad_wf_responsible_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT adwindow_ppordernode FOREIGN KEY (ad_window_id)
      REFERENCES ad_window (ad_window_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT adworkflow_ppordernode FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT cbpartner_ppordernode FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT entityt_ppordernode FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT pporder_ppordernode FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT pporderworkflow_ppordernode FOREIGN KEY (pp_order_workflow_id)
      REFERENCES ppordwf (pp_order_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT sresource_ppordernode FOREIGN KEY (s_resource_id)
      REFERENCES s_resource (s_resource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordn ADD
  CONSTRAINT workflow_ppordernode FOREIGN KEY (workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_order_node_asset : ppordna
--

ALTER TABLE ppordna ADD
  CONSTRAINT aasset_ppordernodeasset FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordna ADD
  CONSTRAINT pporder_ppordernodeasset FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordna ADD
  CONSTRAINT ppordernode_ppordernodeasset FOREIGN KEY (pp_order_node_id)
      REFERENCES ppordn (pp_order_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordna ADD
  CONSTRAINT pporderworkflow_ppordernodeass FOREIGN KEY (pp_order_workflow_id)
      REFERENCES ppordwf (pp_order_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_order_node_product : ppordnp
--

ALTER TABLE ppordnp ADD
  CONSTRAINT mproduct_ppordernodeproduct FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordnp ADD
  CONSTRAINT pporder_ppordernodeproduct FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordnp ADD
  CONSTRAINT ppordernode_ppordernodeproduct FOREIGN KEY (pp_order_node_id)
      REFERENCES ppordn (pp_order_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordnp ADD
  CONSTRAINT pporderworkflow_ppordernodepro FOREIGN KEY (pp_order_workflow_id)
      REFERENCES ppordwf (pp_order_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_order_node_trl : ppordnt
--

ALTER TABLE ppordnt ADD
  CONSTRAINT adlangu_ppordernodetrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordnt ADD
  CONSTRAINT ppordernode_ppordernodetrl FOREIGN KEY (pp_order_node_id)
      REFERENCES ppordn (pp_order_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_order_nodenext : ppordnn
--

ALTER TABLE ppordnn ADD
  CONSTRAINT adwfnext_ppordernodenext FOREIGN KEY (ad_wf_next_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordnn ADD
  CONSTRAINT adwfnode_ppordernodenext FOREIGN KEY (ad_wf_node_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordnn ADD
  CONSTRAINT entityt_ppordernodenext FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordnn ADD
  CONSTRAINT pporder_ppordernodenext FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordnn ADD
  CONSTRAINT ppordernext_ppordernodenext FOREIGN KEY (pp_order_next_id)
      REFERENCES ppordn (pp_order_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordnn ADD
  CONSTRAINT ppordernode_ppordernodenext FOREIGN KEY (pp_order_node_id)
      REFERENCES ppordn (pp_order_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_order_workflow : ppordwf
--

ALTER TABLE ppordwf ADD
  CONSTRAINT adtable_pporderworkflow FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordwf ADD
  CONSTRAINT adwfnode_pporderworkflow FOREIGN KEY (ad_wf_node_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordwf ADD
  CONSTRAINT adwfresponsible_pporderworkflo FOREIGN KEY (ad_wf_responsible_id)
      REFERENCES adwfrsp (ad_wf_responsible_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordwf ADD
  CONSTRAINT adworkflow_pporderworkflow FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordwf ADD
  CONSTRAINT adworkflowprocessor_pporderwor FOREIGN KEY (ad_workflowprocessor_id)
      REFERENCES adwfp (ad_workflowprocessor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordwf ADD
  CONSTRAINT entityt_pporderworkflow FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordwf ADD
  CONSTRAINT pporder_pporderworkflow FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordwf ADD
  CONSTRAINT ppordernode_pporderworkflow FOREIGN KEY (pp_order_node_id)
      REFERENCES ppordn (pp_order_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordwf ADD
  CONSTRAINT sresource_pporderworkflow FOREIGN KEY (s_resource_id)
      REFERENCES s_resource (s_resource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_order_workflow_trl : ppordwft
--

ALTER TABLE ppordwft ADD
  CONSTRAINT adlangu_pporderworkflowtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppordwft ADD
  CONSTRAINT pporderworkflow_pporderworkflo FOREIGN KEY (pp_order_workflow_id)
      REFERENCES ppordwf (pp_order_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_period : pp_period
--

ALTER TABLE pp_period ADD
  CONSTRAINT ppperioddefinition_ppperiod FOREIGN KEY (pp_perioddefinition_id)
      REFERENCES pppddfn (pp_perioddefinition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_perioddefinition : pppddfn
--

ALTER TABLE pppddfn ADD
  CONSTRAINT ppcalendar_ppperioddefinition FOREIGN KEY (pp_calendar_id)
      REFERENCES ppcal (pp_calendar_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_product_bom : ppprdbom
--

ALTER TABLE ppprdbom ADD
  CONSTRAINT cuom_ppproductbom FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdbom ADD
  CONSTRAINT mattributesetinstance_ppproduc FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdbom ADD
  CONSTRAINT mchangenotice_ppproductbom FOREIGN KEY (m_changenotice_id)
      REFERENCES mchgntc (m_changenotice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdbom ADD
  CONSTRAINT mproduct_ppproductbom FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_product_bom_trl : ppprdbomt
--

ALTER TABLE ppprdbomt ADD
  CONSTRAINT adlangu_ppproductbomtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdbomt ADD
  CONSTRAINT ppproductbom_ppproductbomtrl FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_product_bomline : ppprdboml
--

ALTER TABLE ppprdboml ADD
  CONSTRAINT cuom_ppproductbomline FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdboml ADD
  CONSTRAINT mattributesetinstance_ppprodbl FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdboml ADD
  CONSTRAINT mchangenotice_ppproductbomline FOREIGN KEY (m_changenotice_id)
      REFERENCES mchgntc (m_changenotice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdboml ADD
  CONSTRAINT mproduct_ppproductbomline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdboml ADD
  CONSTRAINT ppproductbom_ppproductbomline FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_product_bomline_trl : ppprdbomlt
--

ALTER TABLE ppprdbomlt ADD
  CONSTRAINT adlangu_ppproductbomlinetrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdbomlt ADD
  CONSTRAINT ppproductbomline_ppproductboml FOREIGN KEY (pp_product_bomline_id)
      REFERENCES ppprdboml (pp_product_bomline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_product_planning : ppprdpln
--

ALTER TABLE ppprdpln ADD
  CONSTRAINT adworkflow_ppproductplanning FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdpln ADD
  CONSTRAINT ddnetworkdistribution_ppproduc FOREIGN KEY (dd_networkdistribution_id)
      REFERENCES ddnwkdst (dd_networkdistribution_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdpln ADD
  CONSTRAINT mproduct_ppproductplanning FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdpln ADD
  CONSTRAINT mwarehouse_ppproductplanning FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdpln ADD
  CONSTRAINT planner_ppproductplanning FOREIGN KEY (planner_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdpln ADD
  CONSTRAINT ppproductbom_ppproductplanning FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppprdpln ADD
  CONSTRAINT sresource_ppproductplanning FOREIGN KEY (s_resource_id)
      REFERENCES s_resource (s_resource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_wf_node_asset : ppwfna
--

ALTER TABLE ppwfna ADD
  CONSTRAINT aasset_ppwfnodeasset FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppwfna ADD
  CONSTRAINT adwfnode_ppwfnodeasset FOREIGN KEY (ad_wf_node_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : pp_wf_node_product : ppwfnp
--

ALTER TABLE ppwfnp ADD
  CONSTRAINT adwfnode_ppwfnodeproduct FOREIGN KEY (ad_wf_node_id)
      REFERENCES ad_wf_node (ad_wf_node_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppwfnp ADD
  CONSTRAINT entityt_ppwfnodeproduct FOREIGN KEY (entitytype)
      REFERENCES adentyp (entitytype)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ppwfnp ADD
  CONSTRAINT mproduct_ppwfnodeproduct FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : qm_specification : qmsfn
--

ALTER TABLE qmsfn ADD
  CONSTRAINT adworkflow_qmspecification FOREIGN KEY (ad_workflow_id)
      REFERENCES adwf (ad_workflow_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE qmsfn ADD
  CONSTRAINT mattributeset_qmspecification FOREIGN KEY (m_attributeset_id)
      REFERENCES matrset (m_attributeset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE qmsfn ADD
  CONSTRAINT mproduct_qmspecification FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE qmsfn ADD
  CONSTRAINT ppproductbom_qmspecification FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : qm_specificationline : qmsfnln
--

ALTER TABLE qmsfnln ADD
  CONSTRAINT mattribute_qmspecificationline FOREIGN KEY (m_attribute_id)
      REFERENCES matr (m_attribute_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE qmsfnln ADD
  CONSTRAINT qmspecification_qmspecificatio FOREIGN KEY (qm_specification_id)
      REFERENCES qmsfn (qm_specification_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_category : r_category
--

ALTER TABLE r_category ADD
  CONSTRAINT mproduct_rcategory FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_categoryupdates : rcatupd
--

ALTER TABLE rcatupd ADD
  CONSTRAINT aduser_rcategoryupdates FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rcatupd ADD
  CONSTRAINT rcategory_rcategoryupdates FOREIGN KEY (r_category_id)
      REFERENCES r_category (r_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_contactinterest : rcnti
--

ALTER TABLE rcnti ADD
  CONSTRAINT aduser_rcontactinterest FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rcnti ADD
  CONSTRAINT rinterestarea_rcontactinterest FOREIGN KEY (r_interestarea_id)
      REFERENCES ria (r_interestarea_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_group : r_group
--

ALTER TABLE r_group ADD
  CONSTRAINT mbom_rgroup FOREIGN KEY (m_bom_id)
      REFERENCES m_bom (m_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_group ADD
  CONSTRAINT mchangenotice_rgroup FOREIGN KEY (m_changenotice_id)
      REFERENCES mchgntc (m_changenotice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_group ADD
  CONSTRAINT ppproductbom_rgroup FOREIGN KEY (pp_product_bom_id)
      REFERENCES ppprdbom (pp_product_bom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_groupupdates : rgrpupd
--

ALTER TABLE rgrpupd ADD
  CONSTRAINT aduser_ruserupdates FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rgrpupd ADD
  CONSTRAINT rgroup_rgroupupdates FOREIGN KEY (r_group_id)
      REFERENCES r_group (r_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_interestarea : ria
--


--
-- Table : r_issueknown : risskn
--

ALTER TABLE risskn ADD
  CONSTRAINT rissuerecommendation_rissuekno FOREIGN KEY (r_issuerecommendation_id)
      REFERENCES rissrecn (r_issuerecommendation_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE risskn ADD
  CONSTRAINT rissuestatus_rissueknown FOREIGN KEY (r_issuestatus_id)
      REFERENCES risssts (r_issuestatus_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE risskn ADD
  CONSTRAINT rrequest_rissueknown FOREIGN KEY (r_request_id)
      REFERENCES r_request (r_request_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_issueproject : rissprj
--

ALTER TABLE rissprj ADD
  CONSTRAINT aasset_rissueproject FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rissprj ADD
  CONSTRAINT cproject_rissueproject FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_issuerecommendation : rissrecn
--


--
-- Table : r_issuesource : risssrc
--

ALTER TABLE risssrc ADD
  CONSTRAINT rissueproject_rissuesource FOREIGN KEY (r_issueproject_id)
      REFERENCES rissprj (r_issueproject_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE risssrc ADD
  CONSTRAINT rissuesystem_rissuesource FOREIGN KEY (r_issuesystem_id)
      REFERENCES risssys (r_issuesystem_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE risssrc ADD
  CONSTRAINT rissueuser_rissuesource FOREIGN KEY (r_issueuser_id)
      REFERENCES rissusr (r_issueuser_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_issuestatus : risssts
--


--
-- Table : r_issuesystem : risssys
--

ALTER TABLE risssys ADD
  CONSTRAINT aasset_rissuesystem FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_issueuser : rissusr
--

ALTER TABLE rissusr ADD
  CONSTRAINT aduser_rissueuser FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_mailtext : r_mailtext
--


--
-- Table : r_mailtext_trl : rmailtt
--

ALTER TABLE rmailtt ADD
  CONSTRAINT adlanguage_rmailtexttrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rmailtt ADD
  CONSTRAINT rmailtext_rmailtexttrl FOREIGN KEY (r_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : r_request : r_request
--

ALTER TABLE r_request ADD
  CONSTRAINT aasset_rrequest FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT adorgtrx_rrequest FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT adrole_rrequest FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT adtable_rrequest FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT aduser_rrequest FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT adusersr_rrequest FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT c_bpartner_rrequest FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT cactivity_rrequest FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT ccampaign_rrequest FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT cinvoiceline_rrequest FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT cinvoicerequest_rrequest FOREIGN KEY (c_invoicerequest_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT corder_rrequest FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT corderline_rrequest FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT cpayment_rrequest FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT cproject_rrequest FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT cprojectphase_rrequest FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT cprojecttask_rrequest FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT ddorder_rrequest FOREIGN KEY (dd_order_id)
      REFERENCES dd_order (dd_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT ddorderline_rrequest FOREIGN KEY (dd_orderline_id)
      REFERENCES ddordln (dd_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT mchangerequest_rrequest FOREIGN KEY (m_changerequest_id)
      REFERENCES mchgreq (m_changerequest_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT mfixchangenotice_rrequest FOREIGN KEY (m_fixchangenotice_id)
      REFERENCES mchgntc (m_changenotice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT minout_rrequest FOREIGN KEY (m_inout_id)
      REFERENCES m_inout (m_inout_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT minoutline_rrequest FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT mproduct_rrequest FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT mproductspent_rrequest FOREIGN KEY (m_productspent_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT mrequisition_rrequest FOREIGN KEY (m_requisition_id)
      REFERENCES mreq (m_requisition_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT mrequisitionline_rrequest FOREIGN KEY (m_requisitionline_id)
      REFERENCES mreqln (m_requisitionline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT mrma_rrequest FOREIGN KEY (m_rma_id)
      REFERENCES m_rma (m_rma_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT mrmaline_rrequest FOREIGN KEY (m_rmaline_id)
      REFERENCES m_rmaline (m_rmaline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT ppcostcollector_rrequest FOREIGN KEY (pp_cost_collector_id)
      REFERENCES ppcstcol (pp_cost_collector_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT pporder_rrequest FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT rcategory_rrequest FOREIGN KEY (r_category_id)
      REFERENCES r_category (r_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT rgroup_rrequest FOREIGN KEY (r_group_id)
      REFERENCES r_group (r_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT rinvoice_rrequest FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT rmailtext_rrequest FOREIGN KEY (r_mailtext_id)
      REFERENCES r_mailtext (r_mailtext_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT rrequest_related FOREIGN KEY (r_requestrelated_id)
      REFERENCES r_request (r_request_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT rrequesttype_rrequest FOREIGN KEY (r_requesttype_id)
      REFERENCES rreqtyp (r_requesttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT rresolution_rrequest FOREIGN KEY (r_resolution_id)
      REFERENCES rrsln (r_resolution_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT rstandardresponse_rrequest FOREIGN KEY (r_standardresponse_id)
      REFERENCES rstdrsp (r_standardresponse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT rstatus_rrequest FOREIGN KEY (r_status_id)
      REFERENCES r_status (r_status_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT user1_rrequest FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT user2_rrequest FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT user3_rrequest FOREIGN KEY (user3_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_request ADD
  CONSTRAINT user4_rrequest FOREIGN KEY (user4_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_requestaction : rreqa
--

ALTER TABLE rreqa ADD
  CONSTRAINT aasset_rrequestaction FOREIGN KEY (a_asset_id)
      REFERENCES a_asset (a_asset_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT adrole_rrequestaction FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT aduser_rrequestaction FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT adusersr_rrequestaction FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT cactivity_rrequestaction FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT cbpartner_rrequestaction FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT cinvoice_rrequestaction FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT corder_rrequestaction FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT cpayment_rrequestaction FOREIGN KEY (c_payment_id)
      REFERENCES c_payment (c_payment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT cproject_rrequestaction FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT minout_mrequestaction FOREIGN KEY (m_inout_id)
      REFERENCES m_inout (m_inout_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT mproduct_rrequestaction FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT mproductspent_rrequestaction FOREIGN KEY (m_productspent_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT mrma_rrequestaction FOREIGN KEY (m_rma_id)
      REFERENCES m_rma (m_rma_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT rcategory_rrequestaction FOREIGN KEY (r_category_id)
      REFERENCES r_category (r_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT rgroup_rrequestaction FOREIGN KEY (r_group_id)
      REFERENCES r_group (r_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT rrequest_rrequestaction FOREIGN KEY (r_request_id)
      REFERENCES r_request (r_request_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT rrequesttype_rrequestaction FOREIGN KEY (r_requesttype_id)
      REFERENCES rreqtyp (r_requesttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT rresolution_rrequestaction FOREIGN KEY (r_resolution_id)
      REFERENCES rrsln (r_resolution_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqa ADD
  CONSTRAINT rstatus_rrequestaction FOREIGN KEY (r_status_id)
      REFERENCES r_status (r_status_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_requestprocessor : rreqp
--

ALTER TABLE rreqp ADD
  CONSTRAINT aduser_rrequestprocessor FOREIGN KEY (supervisor_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqp ADD
  CONSTRAINT rrequesttype_rrequestprocessor FOREIGN KEY (r_requesttype_id)
      REFERENCES rreqtyp (r_requesttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_requestprocessor_route : rreqprte
--

ALTER TABLE rreqprte ADD
  CONSTRAINT aduser_rrequestprocessorroute FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqprte ADD
  CONSTRAINT rrequestprocessor_route FOREIGN KEY (r_requestprocessor_id)
      REFERENCES rreqp (r_requestprocessor_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqprte ADD
  CONSTRAINT rrequesttype_rprocessorrule FOREIGN KEY (r_requesttype_id)
      REFERENCES rreqtyp (r_requesttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_requestprocessorlog : rreqplog
--

ALTER TABLE rreqplog ADD
  CONSTRAINT rrequestprocessor_log FOREIGN KEY (r_requestprocessor_id)
      REFERENCES rreqp (r_requestprocessor_id)
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.r_requestprocessorlog
  OWNER TO adempiere;

--
-- Table : r_requesttype : rreqtyp
--

ALTER TABLE rreqtyp ADD
  CONSTRAINT rstatuscategory_rrequesttype FOREIGN KEY (r_statuscategory_id)
      REFERENCES rstscat (r_statuscategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_requesttypeupdates : rreqtypud
--

ALTER TABLE rreqtypud ADD
  CONSTRAINT aduser_rrequesttypeupdates FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rreqtypud ADD
  CONSTRAINT rrequesttype_rrtupdates FOREIGN KEY (r_requesttype_id)
      REFERENCES rreqtyp (r_requesttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_requestupdate : rrequpd
--

ALTER TABLE rrequpd ADD
  CONSTRAINT mproductspent_rrequestupdate FOREIGN KEY (m_productspent_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rrequpd ADD
  CONSTRAINT rrequest_rrequestupdate FOREIGN KEY (r_request_id)
      REFERENCES r_request (r_request_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_requestupdates : rrequpds
--

ALTER TABLE rrequpds ADD
  CONSTRAINT aduser_rrequestupdates FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rrequpds ADD
  CONSTRAINT rrequest_rrupdates FOREIGN KEY (r_request_id)
      REFERENCES r_request (r_request_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_resolution : rrsln
--


--
-- Table : r_standardrequest : rstdreq
--

ALTER TABLE rstdreq ADD
  CONSTRAINT adrole_rstandardrequest FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rstdreq ADD
  CONSTRAINT rcategory_rstandardrequest FOREIGN KEY (r_category_id)
      REFERENCES r_category (r_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rstdreq ADD
  CONSTRAINT rgroup_rstandardrequest FOREIGN KEY (r_group_id)
      REFERENCES r_group (r_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rstdreq ADD
  CONSTRAINT rrequestrelated_rstandardrequest FOREIGN KEY (r_requestrelated_id)
      REFERENCES rstdreq (r_standardrequest_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rstdreq ADD
  CONSTRAINT rrequesttype_rstandardrequest FOREIGN KEY (r_requesttype_id)
      REFERENCES rreqtyp (r_requesttype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rstdreq ADD
  CONSTRAINT rstatus_rstandardrequest FOREIGN KEY (r_status_id)
      REFERENCES r_status (r_status_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rstdreq ADD
  CONSTRAINT salesrep_rstandardrequest FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_standardrequesttype : rstdreqtyp
--

ALTER TABLE rstdreqtyp ADD
  CONSTRAINT adtable_rstandardrequesttype FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE rstdreqtyp ADD
  CONSTRAINT cdoctype_rstandardrequesttype FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_standardresponse : rstdrsp
--


--
-- Table : r_status : r_status
--

ALTER TABLE r_status ADD
  CONSTRAINT nextstatus_rstatus FOREIGN KEY (next_status_id)
      REFERENCES r_status (r_status_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_status ADD
  CONSTRAINT rstatuscategory_rstatus FOREIGN KEY (r_statuscategory_id)
      REFERENCES rstscat (r_statuscategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE r_status ADD
  CONSTRAINT updatestatus_rstatus FOREIGN KEY (update_status_id)
      REFERENCES r_status (r_status_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : r_statuscategory : rstscat
--


--
-- Table : s_expensetype : sexptyp
--

ALTER TABLE sexptyp ADD
  CONSTRAINT ctaxcategory_sexpensetype FOREIGN KEY (c_taxcategory_id)
      REFERENCES ctaxcat (c_taxcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE sexptyp ADD
  CONSTRAINT ctaxtype_sexpensetype FOREIGN KEY (c_taxtype_id)
      REFERENCES c_taxtype (c_taxtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE sexptyp ADD
  CONSTRAINT cuom_sexpensetype FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE sexptyp ADD
  CONSTRAINT mproductcategory_sexpensetype FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : s_resource : s_resource
--

ALTER TABLE s_resource ADD
  CONSTRAINT aduser_sresource FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE s_resource ADD
  CONSTRAINT mwarehouse_sresource FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE s_resource ADD
  CONSTRAINT sresourcetype_sresource FOREIGN KEY (s_resourcetype_id)
      REFERENCES srscetyp (s_resourcetype_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : s_resourceassignment : srscea
--

ALTER TABLE srscea ADD
  CONSTRAINT sresource_sresourceassignment FOREIGN KEY (s_resource_id)
      REFERENCES s_resource (s_resource_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : s_resourcetype : srscetyp
--

ALTER TABLE srscetyp ADD
  CONSTRAINT ctaxcategory_sresourcetype FOREIGN KEY (c_taxcategory_id)
      REFERENCES ctaxcat (c_taxcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE srscetyp ADD
  CONSTRAINT ctaxtype_sresourcetype FOREIGN KEY (c_taxtype_id)
      REFERENCES c_taxtype (c_taxtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE srscetyp ADD
  CONSTRAINT cuom_sresourcetype FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE srscetyp ADD
  CONSTRAINT mprodcategory_sresourcetype FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : s_resourceunavailable : srsceua
--

ALTER TABLE srsceua ADD
  CONSTRAINT sresource_sresunavailable FOREIGN KEY (s_resource_id)
      REFERENCES s_resource (s_resource_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : s_timeexpense : stimexp
--

ALTER TABLE stimexp ADD
  CONSTRAINT cbpartner_stimeexpense FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexp ADD
  CONSTRAINT cinvoice_stimeexpense FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexp ADD
  CONSTRAINT mpricelist_stimeexpense FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexp ADD
  CONSTRAINT mwarehouse_stimeexpense FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : s_timeexpenseline : stimexpln
--

ALTER TABLE stimexpln ADD
  CONSTRAINT cactivity_stimeexpenseline FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexpln ADD
  CONSTRAINT cbpartner_stimeexpenseline FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexpln ADD
  CONSTRAINT ccampaign_stimeexpenseline FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexpln ADD
  CONSTRAINT ccurrency_stimeexpenseline FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexpln ADD
  CONSTRAINT cinvoiceline_stimeexpenseline FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexpln ADD
  CONSTRAINT corderline_stimeexpenseline FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexpln ADD
  CONSTRAINT cproject_stimeexpenseline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexpln ADD
  CONSTRAINT cprojectphase_stimeexpenseline FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexpln ADD
  CONSTRAINT cprojecttask_stimeexpenseline FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexpln ADD
  CONSTRAINT ctax_stimeexpenseline FOREIGN KEY (c_tax_id)
      REFERENCES c_tax (c_tax_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexpln ADD
  CONSTRAINT cuom_stimeexpenseline FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexpln ADD
  CONSTRAINT mproduct_stimeexpenseline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexpln ADD
  CONSTRAINT sresourceassign_steline FOREIGN KEY (s_resourceassignment_id)
      REFERENCES srscea (s_resourceassignment_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE stimexpln ADD
  CONSTRAINT stimeexpense_line FOREIGN KEY (s_timeexpense_id)
      REFERENCES stimexp (s_timeexpense_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE stimexpln ADD
  CONSTRAINT stimetype_stimeexpenseline FOREIGN KEY (s_timetype_id)
      REFERENCES s_timetype (s_timetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : s_timetype : s_timetype
--


--
-- Table : s_training : s_training
--

ALTER TABLE s_training ADD
  CONSTRAINT ctaxcategory_straining FOREIGN KEY (c_taxcategory_id)
      REFERENCES ctaxcat (c_taxcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE s_training ADD
  CONSTRAINT ctaxtype_straining FOREIGN KEY (c_taxtype_id)
      REFERENCES c_taxtype (c_taxtype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE s_training ADD
  CONSTRAINT cuom_straining FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE s_training ADD
  CONSTRAINT mproductcategory_straining FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : s_training_class : strgcls
--

ALTER TABLE strgcls ADD
  CONSTRAINT mproduct_strainingclass FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE strgcls ADD
  CONSTRAINT straining_strainingclass FOREIGN KEY (s_training_id)
      REFERENCES s_training (s_training_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : t_aging : t_aging
--

ALTER TABLE t_aging ADD
  CONSTRAINT adpinstance_taging FOREIGN KEY (ad_pinstance_id)
      REFERENCES adpinst (ad_pinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE t_aging ADD
  CONSTRAINT cactivity_taging FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE t_aging ADD
  CONSTRAINT cbpartner_taging FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE t_aging ADD
  CONSTRAINT cbpgroup_taging FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE t_aging ADD
  CONSTRAINT ccampaign_taging FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE t_aging ADD
  CONSTRAINT ccurrency_taging FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE t_aging ADD
  CONSTRAINT cproject_taging FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : t_alter_column : taltcol
--


--
-- Table : t_bom_indented : tbomidt
--


--
-- Table : t_bomline : t_bomline
--


--
-- Table : t_combinedaging : tcbna
--


--
-- Table : t_distributionrundetail : tdstrdet
--

ALTER TABLE tdstrdet ADD
  CONSTRAINT cbpartner_tdrdetail FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE tdstrdet ADD
  CONSTRAINT cbpartnerlocation_tdrdetail FOREIGN KEY (c_bpartner_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE tdstrdet ADD
  CONSTRAINT mdistributionlist_tdrdetail FOREIGN KEY (m_distributionlist_id)
      REFERENCES mdstlst (m_distributionlist_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE tdstrdet ADD
  CONSTRAINT mdistributionlline_tdrdetail FOREIGN KEY (m_distributionlistline_id)
      REFERENCES mdstlstln (m_distributionlistline_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE tdstrdet ADD
  CONSTRAINT mdistributionrline_tdrdetail FOREIGN KEY (m_distributionrunline_id)
      REFERENCES mdstrln (m_distributionrunline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE tdstrdet ADD
  CONSTRAINT mdistributionrun_tdrdetail FOREIGN KEY (m_distributionrun_id)
      REFERENCES mdstr (m_distributionrun_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE tdstrdet ADD
  CONSTRAINT mproduct_tdrdetail FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : t_inventoryvalue : tivtval
--

ALTER TABLE tivtval ADD
  CONSTRAINT adpinstance_tinventoryvalue FOREIGN KEY (ad_pinstance_id)
      REFERENCES adpinst (ad_pinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE tivtval ADD
  CONSTRAINT ccurrency_tinventoryvalue FOREIGN KEY (c_currency_id)
      REFERENCES c_currency (c_currency_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE tivtval ADD
  CONSTRAINT masi_tinventoryvalue FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE tivtval ADD
  CONSTRAINT mcostelement_tinventoryvalue FOREIGN KEY (m_costelement_id)
      REFERENCES mcstelm (m_costelement_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE tivtval ADD
  CONSTRAINT mplversion_tinventoryvalue FOREIGN KEY (m_pricelist_version_id)
      REFERENCES mplstver (m_pricelist_version_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE tivtval ADD
  CONSTRAINT mproduct_tinventoryvalue FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE tivtval ADD
  CONSTRAINT mwarehouse_tinventoryvalue FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.t_inventoryvalue
  OWNER TO adempiere;

--
-- Table : t_invoicegl : tinvgl
--

ALTER TABLE tinvgl ADD
  CONSTRAINT adpinstance_tinvoicegl FOREIGN KEY (ad_pinstance_id)
      REFERENCES adpinst (ad_pinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE tinvgl ADD
  CONSTRAINT cconversiontype_tinvoicegl FOREIGN KEY (c_conversiontypereval_id)
      REFERENCES ccvntyp (c_conversiontype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE tinvgl ADD
  CONSTRAINT cdoctype_tinvoicegl FOREIGN KEY (c_doctypereval_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE tinvgl ADD
  CONSTRAINT cinvoice_tinvoicegl FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE tinvgl ADD
  CONSTRAINT factacct_tinvoicegl FOREIGN KEY (fact_acct_id)
      REFERENCES fact_acct (fact_acct_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : t_mrp_crp : t_mrp_crp
--


--
-- Table : t_openitemtodate : toitodt
--


--
-- Table : t_reconciliation : trecon
--


--
-- Table : t_replenish : trpl
--

ALTER TABLE trpl ADD
  CONSTRAINT adpinstance_treplenish FOREIGN KEY (ad_pinstance_id)
      REFERENCES adpinst (ad_pinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE trpl ADD
  CONSTRAINT cdoctype_treplenish FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE trpl ADD
  CONSTRAINT mproduct_treplenish FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE trpl ADD
  CONSTRAINT mwarehouse_treplenish FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE trpl ADD
  CONSTRAINT mwarehousesource_treplenish FOREIGN KEY (m_warehousesource_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE SET NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.t_replenish
  OWNER TO adempiere;

--
-- Table : t_replenishplan : trplpln
--


--
-- Table : t_report : t_report
--


--
-- Table : t_reportstatement : trptstmt
--

ALTER TABLE trptstmt ADD
  CONSTRAINT adpinstance_treportstatement FOREIGN KEY (ad_pinstance_id)
      REFERENCES adpinst (ad_pinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.t_reportstatement
  OWNER TO adempiere;

--
-- Table : t_selection : tsel
--


--
-- Table : t_selection_browse : tselbws
--


--
-- Table : t_selection2 : tsel2
--


--
-- Table : t_spool : t_spool
--

ALTER TABLE t_spool ADD
  CONSTRAINT adpinstance_tspool FOREIGN KEY (ad_pinstance_id)
      REFERENCES adpinst (ad_pinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.t_spool
  OWNER TO adempiere;

--
-- Table : t_transaction : ttrans
--

ALTER TABLE ttrans ADD
  CONSTRAINT adpinstance_ttransaction FOREIGN KEY (ad_pinstance_id)
      REFERENCES adpinst (ad_pinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE ttrans ADD
  CONSTRAINT cprojectissue_ttransaction FOREIGN KEY (c_projectissue_id)
      REFERENCES cprojiss (c_projectissue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ttrans ADD
  CONSTRAINT masi_ttransaction FOREIGN KEY (m_attributesetinstance_id)
      REFERENCES matrseti (m_attributesetinstance_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ttrans ADD
  CONSTRAINT minoutline_ttransaction FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ttrans ADD
  CONSTRAINT minventoryline_ttransaction FOREIGN KEY (m_inventoryline_id)
      REFERENCES mivtln (m_inventoryline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ttrans ADD
  CONSTRAINT mlocator_ttransaction FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ttrans ADD
  CONSTRAINT mmovementline_ttransaction FOREIGN KEY (m_movementline_id)
      REFERENCES mmovln (m_movementline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ttrans ADD
  CONSTRAINT mproduct_ttransaction FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ttrans ADD
  CONSTRAINT mproductionline_ttransaction FOREIGN KEY (m_productionline_id)
      REFERENCES mpdnln (m_productionline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE ttrans ADD
  CONSTRAINT mtransaction_ttransaction FOREIGN KEY (m_transaction_id)
      REFERENCES mtrn (m_transaction_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : t_trialbalance : ttrlbal
--

ALTER TABLE ttrlbal ADD
  CONSTRAINT ad_pinstance_t_trialbalance FOREIGN KEY (ad_pinstance_id)
      REFERENCES adpinst (ad_pinstance_id)
      ON UPDATE NO ACTION ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.t_trialbalance
  OWNER TO adempiere;

--
-- Table : test : test
--

ALTER TABLE test ADD
  CONSTRAINT vc_account_test FOREIGN KEY (account_acct)
      REFERENCES cvalcbn (c_validcombination_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : u_blacklistcheque : ublchq
--


--
-- Table : u_posterminal : upostm
--

ALTER TABLE upostm ADD
  CONSTRAINT cardbankaccount_uposterminal FOREIGN KEY (card_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT cardtransferbankaccount_uposte FOREIGN KEY (cardtransferbankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT cardtransfercashbook_upostermi FOREIGN KEY (cardtransfercashbook_id)
      REFERENCES c_cashbook (c_cashbook_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT cashtransferbankaccount_uposte FOREIGN KEY (cashtransferbankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT cashtransfercashbook_upostermi FOREIGN KEY (cashtransfercashbook_id)
      REFERENCES c_cashbook (c_cashbook_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT ccashbook_uposterminal FOREIGN KEY (c_cashbook_id)
      REFERENCES c_cashbook (c_cashbook_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT ccashbpartner_uposterminal FOREIGN KEY (c_cashbpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT checkbankaccount_uposterminal FOREIGN KEY (check_bankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT checktransferbankaccount_upost FOREIGN KEY (checktransferbankaccount_id)
      REFERENCES cbacct (c_bankaccount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT checktransfercashbook_uposterm FOREIGN KEY (checktransfercashbook_id)
      REFERENCES c_cashbook (c_cashbook_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT ctemplatebpartner_uposterminal FOREIGN KEY (c_templatebpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT mwarehouse_uposterminal FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT popricelist_uposterminal FOREIGN KEY (po_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT salesrep_uposterminal FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE upostm ADD
  CONSTRAINT sopricelist_uposterminal FOREIGN KEY (so_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : u_rolemenu : u_rolemenu
--

ALTER TABLE u_rolemenu ADD
  CONSTRAINT adrole_urolemenu FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE u_rolemenu ADD
  CONSTRAINT uwebmenu_urolemenu FOREIGN KEY (u_webmenu_id)
      REFERENCES u_webmenu (u_webmenu_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : u_web_properties : uwebprp
--


--
-- Table : u_webmenu : u_webmenu
--

ALTER TABLE u_webmenu ADD
  CONSTRAINT parentmenu_uwebmenu FOREIGN KEY (parentmenu_id)
      REFERENCES u_webmenu (u_webmenu_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : w_advertisement : wad
--

ALTER TABLE wad ADD
  CONSTRAINT aduser_wadvertisement FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wad ADD
  CONSTRAINT cbpartner_wadvertisement FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wad ADD
  CONSTRAINT wclickcount_wadvertisement FOREIGN KEY (w_clickcount_id)
      REFERENCES wclkcnt (w_clickcount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wad ADD
  CONSTRAINT wcountercount_wadvertisement FOREIGN KEY (w_countercount_id)
      REFERENCES wcntc (w_countercount_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE adempiere.w_advertisement
  OWNER TO adempiere;

--
-- Table : w_basket : w_basket
--

ALTER TABLE w_basket ADD
  CONSTRAINT aduser_wbasket FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE w_basket ADD
  CONSTRAINT cbpartner_wbasket FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE w_basket ADD
  CONSTRAINT mpricelist_wbasket FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : w_basketline : wbsktln
--

ALTER TABLE wbsktln ADD
  CONSTRAINT mproduct_wbasketline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wbsktln ADD
  CONSTRAINT wbasket_wbasketline FOREIGN KEY (w_basket_id)
      REFERENCES w_basket (w_basket_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : w_click : w_click
--

ALTER TABLE w_click ADD
  CONSTRAINT aduser_wclick FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE w_click ADD
  CONSTRAINT wclickcount_wclick FOREIGN KEY (w_clickcount_id)
      REFERENCES wclkcnt (w_clickcount_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : w_clickcount : wclkcnt
--

ALTER TABLE wclkcnt ADD
  CONSTRAINT cbpartner_wclickcount FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : w_counter : w_counter
--

ALTER TABLE w_counter ADD
  CONSTRAINT aduser_wcounter FOREIGN KEY (ad_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE w_counter ADD
  CONSTRAINT wcountercount_wcounter FOREIGN KEY (w_countercount_id)
      REFERENCES wcntc (w_countercount_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : w_countercount : wcntc
--

ALTER TABLE wcntc ADD
  CONSTRAINT cbpartner_wcountercount FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : w_mailmsg : w_mailmsg
--

ALTER TABLE w_mailmsg ADD
  CONSTRAINT wstore_wmailmsg FOREIGN KEY (w_store_id)
      REFERENCES w_store (w_store_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : w_mailmsg_trl : wmlmsgt
--

ALTER TABLE wmlmsgt ADD
  CONSTRAINT adlanguage_wmailmsgtrl FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE wmlmsgt ADD
  CONSTRAINT wmailmsg_wmailmsgtrl FOREIGN KEY (w_mailmsg_id)
      REFERENCES w_mailmsg (w_mailmsg_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : w_store : w_store
--

ALTER TABLE w_store ADD
  CONSTRAINT adclient_wstore FOREIGN KEY (ad_client_id)
      REFERENCES ad_client (ad_client_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE w_store ADD
  CONSTRAINT cpaymentterm_wstore FOREIGN KEY (c_paymentterm_id)
      REFERENCES cpaytrm (c_paymentterm_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE w_store ADD
  CONSTRAINT mpricelist_wstore FOREIGN KEY (m_pricelist_id)
      REFERENCES mplst (m_pricelist_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE w_store ADD
  CONSTRAINT mwarehouse_wstore FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE w_store ADD
  CONSTRAINT salesrep_wstore FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : w_store_trl : wstrtrl
--

ALTER TABLE wstrtrl ADD
  CONSTRAINT wstore_wstoretrl FOREIGN KEY (w_store_id)
      REFERENCES w_store (w_store_id)
      ON UPDATE NO ACTION ON DELETE CASCADE ;
ALTER TABLE wstrtrl ADD
  CONSTRAINT wstoretrl_adlangauge FOREIGN KEY (ad_language)
      REFERENCES adlng (ad_language)
      ON UPDATE NO ACTION ON DELETE CASCADE ;

--
-- Table : wm_area : wm_area
--

ALTER TABLE wm_area ADD
  CONSTRAINT mwarehouse_wmarea FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wm_area ADD
  CONSTRAINT wmareatype_wmarea FOREIGN KEY (wm_area_type_id)
      REFERENCES wmatype (wm_area_type_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : wm_area_type : wmatype
--


--
-- Table : wm_definition : wmdef
--

ALTER TABLE wmdef ADD
  CONSTRAINT cbpartner_wmdefinition FOREIGN KEY (c_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmdef ADD
  CONSTRAINT cbpgroup_wmdefinition FOREIGN KEY (c_bp_group_id)
      REFERENCES c_bp_group (c_bp_group_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmdef ADD
  CONSTRAINT mproduct_wmdefinition FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmdef ADD
  CONSTRAINT mproductcategory_wmdefinition FOREIGN KEY (m_product_category_id)
      REFERENCES mprodcat (m_product_category_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmdef ADD
  CONSTRAINT wmareatype_wmdefinition FOREIGN KEY (wm_area_type_id)
      REFERENCES wmatype (wm_area_type_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmdef ADD
  CONSTRAINT wmsectiontype_wmdefinition FOREIGN KEY (wm_section_type_id)
      REFERENCES wmsectyp (wm_section_type_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmdef ADD
  CONSTRAINT wmstrategy_wmdefinition FOREIGN KEY (wm_strategy_id)
      REFERENCES wmstrat (wm_strategy_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : wm_inoutbound : wmiobnd
--

ALTER TABLE wmiobnd ADD
  CONSTRAINT adorgtrx_wminoutbound FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobnd ADD
  CONSTRAINT cactivity_wminoutbound FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobnd ADD
  CONSTRAINT ccampaign_wminoutbound FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobnd ADD
  CONSTRAINT cdoctype_wminoutbound FOREIGN KEY (c_doctype_id)
      REFERENCES c_doctype (c_doctype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobnd ADD
  CONSTRAINT dropshipbpartner_wminoutbound FOREIGN KEY (dropship_bpartner_id)
      REFERENCES c_bpartner (c_bpartner_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobnd ADD
  CONSTRAINT dropshiplocation_wminoutbound FOREIGN KEY (dropship_location_id)
      REFERENCES cbploc (c_bpartner_location_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobnd ADD
  CONSTRAINT dropshipuser_wminoutbound FOREIGN KEY (dropship_user_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobnd ADD
  CONSTRAINT mfreightcategory_wminoutbound FOREIGN KEY (m_freightcategory_id)
      REFERENCES mfhtcat (m_freightcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobnd ADD
  CONSTRAINT mlocator_wminoutbound FOREIGN KEY (m_locator_id)
      REFERENCES m_locator (m_locator_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobnd ADD
  CONSTRAINT mshipper_wminoutbound FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobnd ADD
  CONSTRAINT mwarehouse_wminoutbound FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobnd ADD
  CONSTRAINT salesrep_wminoutbound FOREIGN KEY (salesrep_id)
      REFERENCES ad_user (ad_user_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobnd ADD
  CONSTRAINT user1_wminoutbound FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobnd ADD
  CONSTRAINT user2_wminoutbound FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : wm_inoutboundline : wmiobndln
--

ALTER TABLE wmiobndln ADD
  CONSTRAINT adorgtrx_wminoutboundline FOREIGN KEY (ad_orgtrx_id)
      REFERENCES ad_org (ad_org_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT cactivity_wminoutboundline FOREIGN KEY (c_activity_id)
      REFERENCES c_activity (c_activity_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT ccampaign_wminoutboundline FOREIGN KEY (c_campaign_id)
      REFERENCES c_campaign (c_campaign_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT ccharge_wminoutboundline FOREIGN KEY (c_charge_id)
      REFERENCES c_charge (c_charge_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT cinvoice_wminoutboundline FOREIGN KEY (c_invoice_id)
      REFERENCES c_invoice (c_invoice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT cinvoiceline_wminoutboundline FOREIGN KEY (c_invoiceline_id)
      REFERENCES cinvln (c_invoiceline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT corder_wminoutboundline FOREIGN KEY (c_order_id)
      REFERENCES c_order (c_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT corderline_wminoutboundline FOREIGN KEY (c_orderline_id)
      REFERENCES cordln (c_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT cproject_wminoutboundline FOREIGN KEY (c_project_id)
      REFERENCES c_project (c_project_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT cprojectphase_wminoutboundline FOREIGN KEY (c_projectphase_id)
      REFERENCES cprojphse (c_projectphase_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT cprojecttask_wminoutboundline FOREIGN KEY (c_projecttask_id)
      REFERENCES cprojtsk (c_projecttask_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT cuom_wminoutboundline FOREIGN KEY (c_uom_id)
      REFERENCES c_uom (c_uom_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT ddorder_wminoutboundline FOREIGN KEY (dd_order_id)
      REFERENCES dd_order (dd_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT ddorderline_wminoutboundline FOREIGN KEY (dd_orderline_id)
      REFERENCES ddordln (dd_orderline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT mfreightcategory_wminoutboundl FOREIGN KEY (m_freightcategory_id)
      REFERENCES mfhtcat (m_freightcategory_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT mproduct_wminoutboundline FOREIGN KEY (m_product_id)
      REFERENCES m_product (m_product_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT mshipper_wminoutboundline FOREIGN KEY (m_shipper_id)
      REFERENCES m_shipper (m_shipper_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT ppmrp_wminoutboundline FOREIGN KEY (pp_mrp_id)
      REFERENCES pp_mrp (pp_mrp_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT pporder_wminoutboundline FOREIGN KEY (pp_order_id)
      REFERENCES pp_order (pp_order_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT pporderbomline_wminoutboundlin FOREIGN KEY (pp_order_bomline_id)
      REFERENCES ppordboml (pp_order_bomline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT user1_wminoutboundline FOREIGN KEY (user1_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT user2_wminoutboundline FOREIGN KEY (user2_id)
      REFERENCES celmval (c_elementvalue_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndln ADD
  CONSTRAINT wminoutbound_wminoutboundline FOREIGN KEY (wm_inoutbound_id)
      REFERENCES wmiobnd (wm_inoutbound_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : wm_inoutboundlinema : wmiobndlma
--

ALTER TABLE wmiobndlma ADD
  CONSTRAINT minoutline_wminoutboundlinema FOREIGN KEY (m_inoutline_id)
      REFERENCES mioln (m_inoutline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmiobndlma ADD
  CONSTRAINT wminoutboundline_wminoutboundl FOREIGN KEY (wm_inoutboundline_id)
      REFERENCES wmiobndln (wm_inoutboundline_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : wm_rule : wm_rule
--

ALTER TABLE wm_rule ADD
  CONSTRAINT adrule_wmrule FOREIGN KEY (ad_rule_id)
      REFERENCES ad_rule (ad_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : wm_section : wm_section
--

ALTER TABLE wm_section ADD
  CONSTRAINT wmarea_wmsection FOREIGN KEY (wm_area_id)
      REFERENCES wm_area (wm_area_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wm_section ADD
  CONSTRAINT wmsectiontype_wmsection FOREIGN KEY (wm_section_type_id)
      REFERENCES wmsectyp (wm_section_type_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : wm_section_detail : wmsecdet
--

ALTER TABLE wmsecdet ADD
  CONSTRAINT wmsection_wmsectiondetail FOREIGN KEY (wm_section_id)
      REFERENCES wm_section (wm_section_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : wm_section_type : wmsectyp
--


--
-- Table : wm_strategy : wmstrat
--

ALTER TABLE wmstrat ADD
  CONSTRAINT mwarehouse_wmstrategy FOREIGN KEY (m_warehouse_id)
      REFERENCES mwhse (m_warehouse_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : wm_strategy_detail : wmstratd
--

ALTER TABLE wmstratd ADD
  CONSTRAINT wmrule_wmstrategydetail FOREIGN KEY (wm_rule_id)
      REFERENCES wm_rule (wm_rule_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;
ALTER TABLE wmstratd ADD
  CONSTRAINT wmstrategy_wmstrategydetail FOREIGN KEY (wm_strategy_id)
      REFERENCES wmstrat (wm_strategy_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ;

--
-- Table : ws_webservice : wswsrv
--


--
-- Table : ws_webservice_para : wswsrvp
--

ALTER TABLE wswsrvp ADD
  CONSTRAINT wswebservicetype_wswebservicep FOREIGN KEY (ws_webservicetype_id)
      REFERENCES wswsrvtyp (ws_webservicetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION;

--
-- Table : ws_webservicefieldinput : wswsrvfi
--

ALTER TABLE wswsrvfi ADD
  CONSTRAINT adcolumn_wswebservicefieldinpu FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE wswsrvfi ADD
  CONSTRAINT wswebservicetype_wswebservicfi FOREIGN KEY (ws_webservicetype_id)
      REFERENCES wswsrvtyp (ws_webservicetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION;

--
-- Table : ws_webservicefieldoutput : wswsrvfo
--

ALTER TABLE wswsrvfo ADD
  CONSTRAINT adcolumn_wswebservicefieldoutp FOREIGN KEY (ad_column_id)
      REFERENCES ad_column (ad_column_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE wswsrvfo ADD
  CONSTRAINT wswebservicetype_wswebservicfo FOREIGN KEY (ws_webservicetype_id)
      REFERENCES wswsrvtyp (ws_webservicetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION;

--
-- Table : ws_webservicemethod : wswsrvmtd
--

ALTER TABLE wswsrvmtd ADD
  CONSTRAINT wswebservice_wswebservicemetho FOREIGN KEY (ws_webservice_id)
      REFERENCES wswsrv (ws_webservice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION;

--
-- Table : ws_webservicetype : wswsrvtyp
--

ALTER TABLE wswsrvtyp ADD
  CONSTRAINT adtable_wswebservicetype FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE wswsrvtyp ADD
  CONSTRAINT wswebservice_wswebservicetype FOREIGN KEY (ws_webservice_id)
      REFERENCES wswsrv (ws_webservice_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE wswsrvtyp ADD
  CONSTRAINT wswebservicemethod_wswebservic FOREIGN KEY (ws_webservicemethod_id)
      REFERENCES wswsrvmtd (ws_webservicemethod_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION;

--
-- Table : ws_webservicetypeaccess : wswsrvta
--

ALTER TABLE wswsrvta ADD
  CONSTRAINT adrole_wswebservicetypeaccess FOREIGN KEY (ad_role_id)
      REFERENCES ad_role (ad_role_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE wswsrvta ADD
  CONSTRAINT wswebservicetype_wswebservicet FOREIGN KEY (ws_webservicetype_id)
      REFERENCES wswsrvtyp (ws_webservicetype_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION;
