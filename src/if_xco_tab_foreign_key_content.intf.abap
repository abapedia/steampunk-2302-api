INTERFACE if_xco_tab_foreign_key_content
  PUBLIC.

  TYPES:
    BEGIN OF ts_field_assignment,
      check_field       TYPE c LENGTH 30,
      foreign_key_table TYPE c LENGTH 30,
      foreign_key_field TYPE c LENGTH 30,
    END OF ts_field_assignment.
  TYPES:
    tt_field_assignment TYPE HASHED TABLE OF ts_field_assignment WITH UNIQUE KEY check_field.
  TYPES:
    BEGIN OF ts_cardinality,
      left_cardinality  TYPE REF TO cl_xco_tab_fkey_cardinality,
      right_cardinality TYPE REF TO cl_xco_tab_fkey_cardinality,
    END OF ts_cardinality.
  TYPES:
    BEGIN OF ts_error_message,
      message_number   TYPE c LENGTH 3,
      application_area TYPE c LENGTH 20,
    END OF ts_error_message.
  TYPES:
    BEGIN OF ts_content,
      check_table       TYPE REF TO if_xco_database_table,
      field_assignments TYPE tt_field_assignment,
      screen_check      TYPE abap_bool,
      key_type          TYPE REF TO cl_xco_tab_fkey_field_type,
      cardinality       TYPE ts_cardinality,
      error_message     TYPE ts_error_message,
    END OF ts_content.
  DATA foreign_key TYPE REF TO if_xco_tab_foreign_key READ-ONLY.
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
      VALUE(rt_field_assignments) TYPE tt_field_assignment.
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
      VALUE(rs_cardinality) TYPE ts_cardinality.
  METHODS get_error_message
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rs_error_message) TYPE ts_error_message.
  METHODS get
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.