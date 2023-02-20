INTERFACE if_xco_dbt_foreign_key_content
  PUBLIC.
  DATA foreign_key TYPE REF TO if_xco_dbt_foreign_key READ-ONLY.
  DATA read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.
  METHODS get_check_table
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(ro_check_check) TYPE REF TO if_xco_database_table.
  METHODS get_field_assignments
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rt_field_assignments) TYPE if_xco_tab_foreign_key_content=>tt_field_assignment.
  METHODS get_screen_check
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rv_screen_check) TYPE abap_bool.
  METHODS get_key_type
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(ro_key_type) TYPE REF TO cl_xco_tab_fkey_field_type.
  METHODS get_cardinality
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rs_cardinality) TYPE if_xco_tab_foreign_key_content=>ts_cardinality.
  METHODS get_error_message
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rs_error_message) TYPE if_xco_tab_foreign_key_content=>ts_error_message.
  METHODS get
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rs_content) TYPE if_xco_tab_foreign_key_content=>ts_content.
ENDINTERFACE.