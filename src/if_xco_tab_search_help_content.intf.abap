INTERFACE if_xco_tab_search_help_content
  PUBLIC.

  TYPES:
    BEGIN OF ts_field_assignment,
      parameter  TYPE c LENGTH 30,
      table_name TYPE tabname,
      field_name TYPE c LENGTH 30,
    END OF ts_field_assignment.
  TYPES:
    tt_field_assignment TYPE HASHED TABLE OF ts_field_assignment WITH UNIQUE KEY parameter.
  TYPES:
    BEGIN OF ts_content,
      search_help_name  TYPE sxco_ad_object_name,
      field_assignments TYPE tt_field_assignment,
    END OF ts_content.
  DATA search_help TYPE REF TO if_xco_tab_search_help READ-ONLY.
  DATA read_state TYPE REF TO cl_xco_ad_object_read_state READ-ONLY.
  METHODS get_search_help_name
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rv_search_help_name) TYPE sxco_ad_object_name.
  METHODS get_field_assignments
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rt_field_assignments) TYPE tt_field_assignment.
  METHODS get
    IMPORTING
      !io_origin TYPE REF TO cl_xco_tab_origin OPTIONAL
    RETURNING
      VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.