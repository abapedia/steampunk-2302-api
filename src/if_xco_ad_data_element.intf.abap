INTERFACE if_xco_ad_data_element
  PUBLIC.

  INTERFACES if_xco_ad_data_type.
  INTERFACES if_xco_ad_object.
  INTERFACES if_xco_aps_component_type.
  INTERFACES if_xco_ar_object.
  INTERFACES if_xco_cts_changeable.
  INTERFACES if_xco_dbt_field_type.
  INTERFACES if_xco_ddl_expr_cast_dtype.
  INTERFACES if_xco_gen_ao_type_attribute.
  INTERFACES if_xco_gen_ao_type_declaration.
  INTERFACES if_xco_gen_ao_type_d_str_cpnt.
  INTERFACES if_xco_gen_ao_type_d_tab_row.
  INTERFACES if_xco_gen_ao_type_parameter.
  INTERFACES if_xco_gen_ao_type_p_changing.
  INTERFACES if_xco_gen_ao_type_p_exporting.
  INTERFACES if_xco_gen_ao_type_p_importing.
  INTERFACES if_xco_gen_ao_type_p_returning.
  INTERFACES if_xco_gen_ddls_field_type.
  INTERFACES if_xco_gen_ddls_param_dtype.
  INTERFACES if_xco_gen_drty_std_type.

  INTERFACES if_xco_gen_fugr_fm_pt_changng.
  INTERFACES if_xco_gen_fugr_fm_pt_exprtng.
  INTERFACES if_xco_gen_fugr_fm_pt_imprtng.

  INTERFACES if_xco_gen_tabl_field_type_dbt.
  INTERFACES if_xco_gen_tabl_field_type_gtt.
  INTERFACES if_xco_gen_tabl_field_type_str.
  INTERFACES if_xco_gen_ttyp_row_type.
  INTERFACES if_xco_gtt_field_type.
  INTERFACES if_xco_printable.
  INTERFACES if_xco_str_component_type.
  INTERFACES if_xco_ttyp_row_type.

  ALIASES name
    FOR if_xco_ad_object~name.
  ALIASES check_syntax
    FOR if_xco_ad_object~check_syntax.
  ALIASES get_state
    FOR if_xco_ad_object~get_state.
  METHODS exists
    IMPORTING
      !io_read_state TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      !io_origin TYPE REF TO cl_xco_dtel_origin OPTIONAL
    RETURNING
      VALUE(rv_exists) TYPE abap_bool.
  METHODS content
    IMPORTING
      !io_read_state TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
    RETURNING
      VALUE(ro_content) TYPE REF TO if_xco_dtel_content.
  METHODS set_api_state
    IMPORTING
      !io_change_scenario TYPE REF TO if_xco_cts_change_scenario
      !io_api_state TYPE REF TO cl_xco_ars_api_state.
  METHODS get_api_state
    RETURNING
      VALUE(ro_api_state) TYPE REF TO cl_xco_ars_api_state.
ENDINTERFACE.