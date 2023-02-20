INTERFACE if_xco_database_table
  PUBLIC.

  INTERFACES if_xco_ad_object.
  INTERFACES if_xco_ar_object.
  INTERFACES if_xco_cts_changeable.
  INTERFACES if_xco_gen_clas_amdp_db_entity.
  INTERFACES if_xco_printable.

  ALIASES name
    FOR if_xco_ad_object~name.
  ALIASES check_syntax
    FOR if_xco_ad_object~check_syntax.
  ALIASES get_state
    FOR if_xco_ad_object~get_state.

  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_database_table WITH DEFAULT KEY.
  DATA fields TYPE REF TO if_xco_dbt_fields_factory READ-ONLY.
  METHODS exists
    IMPORTING
      !io_read_state TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rv_exists) TYPE abap_bool.
  METHODS set_api_state
    IMPORTING
      !io_release_contract TYPE REF TO cl_xco_ars_release_contract OPTIONAL
      !io_change_scenario TYPE REF TO if_xco_cts_change_scenario
      !io_api_state TYPE REF TO cl_xco_ars_api_state.
  METHODS get_api_state
    IMPORTING
      !io_release_contract TYPE REF TO cl_xco_ars_release_contract OPTIONAL
    RETURNING
      VALUE(ro_api_state) TYPE REF TO cl_xco_ars_api_state.
  METHODS text_table
    RETURNING
      VALUE(ro_text_table) TYPE REF TO if_xco_dbt_text_table.
  METHODS content
    IMPORTING
      !io_read_state TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
    RETURNING
      VALUE(ro_content) TYPE REF TO if_xco_dbt_content.
  METHODS field
    IMPORTING
      !iv_name TYPE sxco_ad_field_name
    RETURNING
      VALUE(ro_field) TYPE REF TO if_xco_dbt_field.
ENDINTERFACE.